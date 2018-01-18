<?php

namespace Kuhni\Bundle\Controller;

use Doctrine\ORM\EntityRepository;
use Kuhni\Bundle\Entity\CallBack;
use Kuhni\Bundle\Entity\CostProject;
use Kuhni\Bundle\Entity\DesignerAtHome;
use Kuhni\Bundle\Entity\DesignProjectShag;
use Kuhni\Bundle\Entity\freeDesignProject;
use Kuhni\Bundle\Entity\RequestCall;
use Kuhni\Bundle\Entity\ZayavkaRazmer;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Routing\Annotation\Route;
use Vich\UploaderBundle\Form\Type\VichImageType;

/**
 * @Route("/kuhni")
 */
class KuhniCatalogController extends Controller
{
    private $colorStation;

    /**
     * @Route("/", name="kuhni_list")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function indexAction()
    {
        $resultMaterial = $this->result('KuhniMaterial');
        $countMaterial = count($resultMaterial)-4;
        $imageMaterial = $this->arrayImagePath($resultMaterial, 'material');

        $resultColor = $this->result('KuhniColor');

        $resultStyle = $this->result('KuhniStyle');
        $countStyle = count($resultStyle)-4;
        $imageStyle = $this->arrayImagePath($resultStyle, 'style');

        $resultConfig = $this->result('KuhniConfig');
        $countConfig = count($resultConfig)-4;
        $imageConfig = $this->arrayImagePath($resultConfig, 'config');

        //Хлебные крошки
        $breadcrumbs = $this->get('white_october_breadcrumbs');
        // Simple example
        $breadcrumbs->addItem("Главная", $this->get("router")->generate("homepage"));
        $breadcrumbs->addItem("Кухни");

        return $this->render('kuhni/index.html.twig', array(
            'style' => $resultStyle,
            'countStyle' => $countStyle,
            'imageStyle' => $imageStyle,

            'color' => $resultColor,

            'config' => $resultConfig,
            'countConfig' => $countConfig,
            'imageConfig' => $imageConfig,

            'material' => $resultMaterial,
            'countMaterial' => $countMaterial,
            'imageMaterial' => $imageMaterial,

            'maps' => $this->getMapLocate(),
            'titleKuhni' => $this->getTitleKuhni(),

            'formRequestCall' => $this->getRequestCallForm(),
            'formRequestCallModal' => $this->getRequestCallForm(),
            'formFreeProject' => $this->getFreeProjectForm(),
            'formZayavkaRazmer' => $this->getZayavkaRazmer(),
            'formDesignerAtHome' => $this->getDesignerAtHome(),
            'formCostProject' => $this->getCostProject(),
            'form' => $this->getCallBackForm(),
        ));
    }

    /**
     * @Route("/{slug}/{nameproduct}/", name="kuhni_product")
     * @param $slug, $nameproduct
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function productAction($slug, $nameproduct)
    {
        //получение каталога товаров
        $resultCatalog = $this->getCatalogresult();
        $imageCatalog = $this->catalogImagePath($resultCatalog);

        $result = $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Kuhni')
            ->findOneBy(array('slug' => $nameproduct));
        $id = $result->getId();
        $images = $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:KuhniImages')
            ->findByKuhniId($id);
        $image = $this->arrayImagePath($images, 'kitchens');

        /*search all fasades
            SELECT *
            FROM `fasad_color`
            INNER JOIN fasadColor_kuhni ON fasadColor_kuhni.kuhni_id = id
            where id = 41;
         */
        $fasadesColorKuhni = $this->getDoctrine()->getManager()->getRepository('KuhniBundle:Kuhni')
            ->createQueryBuilder('n')
            ->select('n, m')
            ->innerjoin('n.fasadColors', 'm')
            ->where('n.id = :id')
            ->setParameter('id', $id)
            ->getQuery()
            ->getResult();
        //обращение к фасадам
        //$fasadesColor[0]->getFasadColors()[$i]
        $imageFasadesColor = array();
        if (!empty($fasadesColorKuhni)){
            $fasadesColor = $fasadesColorKuhni[0]->getFasadColors();
            for ($i = 0; $i <= count($fasadesColor); $i++){
                if (!empty($fasadesColor[$i])){
                    $imageFasadesColor[] = $this->imagePath($fasadesColor[$i], 'fasad');
                }else{
                    $imageFasadesColor[] = $this->imagePath('', 'fasad');
                }
            }
        }else{
            $fasadesColor = $this->getDoctrine()->getManager()->getRepository('KuhniBundle:FasadColor')->findOneById(1000);
            $imageFasadesColor[] = $this->imagePath('', 'fasad');
        }

        $fasadesTypeKuhni = $this->getDoctrine()->getManager()->getRepository('KuhniBundle:Kuhni')
            ->createQueryBuilder('n')
            ->select('n, m')
            ->innerjoin('n.fasadTypes', 'm')
            ->where('n.id = :id')
            ->setParameter('id', $id)
            ->getQuery()
            ->getResult();
        //обращение к фасадам
        //$fasadesType[0]->getFasadTypes()[$i]
        $imageFasadesType = array();
        if (!empty($fasadesTypeKuhni)){
            $fasadesType = $fasadesTypeKuhni[0]->getFasadTypes();
            for ($i = 0; $i <= count($fasadesType); $i++) {
                if (!empty($fasadesColor[$i])) {
                    $imageFasadesType[] = $this->imagePath($fasadesType[$i], 'fasad');
                } else {
                    $imageFasadesType[] = $this->imagePath('', 'fasad');
                }
            }
        } else {
            $fasadesType = $this->getDoctrine()->getManager()->getRepository('KuhniBundle:FasadType')->findOneById(1000);
            $imageFasadesType[] = $this->imagePath('', 'fasad');
        }

        $material = $this->getDoctrine()->getManager()->getRepository('KuhniBundle:KuhniMaterial')
            ->createQueryBuilder('n')
            ->select('n')
            ->where('n.id = :id')
            ->setParameter('id', $result->getIdKuhniMaterial())
            ->getQuery()->getResult();

        //Хлебные крошки
        $breadcrumbs = $this->get('white_october_breadcrumbs');
        $breadcrumbs->addItem("Главная", $this->get("router")->generate("homepage"));
        $breadcrumbs->addItem("Кухни", $this->get("router")->generate("kuhni_list"));
        if ($slug != 'kuhni-zov'){
            $breadcrumbs->addItem("{$this->getNameBreadParam($slug)}", $this->get("router")->generate('kuhni_parameters', ['slug' => $slug]));
        }
        $breadcrumbs->addItem("{$result->getTitle()}");

        $popular = $this->getPopular();
        $popularImage = array();
        foreach ($popular as $item)
            $popularImage[] = 'upload/kuhni/kitchens/' . $item['imageName'];

        $completedProjects = $this->getCompletedProjects();
        $completedProjectsImage = array();
        foreach ($completedProjects as $item)
            $completedProjectsImage[] = 'upload/kuhni/kitchens/' . $item['imageName'];

        //модальные окна для фиксированного футера
        $resultMaterial = $this->result('KuhniMaterial');
        $countMaterial = count($resultMaterial)-4;
        $imageMaterial = $this->arrayImagePath($resultMaterial, 'material');

        $resultStyle = $this->result('KuhniStyle');
        $countStyle = count($resultStyle)-4;
        $imageStyle = $this->arrayImagePath($resultStyle, 'style');

        $resultConfig = $this->result('KuhniConfig');
        $countConfig = count($resultConfig)-4;
        $imageConfig = $this->arrayImagePath($resultConfig, 'config');

        return $this->render('product/index.html.twig', [
            'kitchen' => $result,
            'images' => $image,
            'slug' => $slug,

            'maps' => $this->getMapLocate(),

            'fasadesColor' => $fasadesColor,
            'imageFasadesColor' => $imageFasadesColor,

            'fasadesType' => $fasadesType,
            'imageFasadesType' => $imageFasadesType,

            'material' => $material,
            'catalog' => $resultCatalog,
            'imageCatalog' => $imageCatalog,

            'populars' => $popular,
            'popularImage' => $popularImage,
            'completedProjects' => $completedProjects,
            'completedProjectImage' => $completedProjectsImage,

            'styleModal' => $resultStyle,
            'countStyleModal' => $countStyle,
            'imageStyleModal' => $imageStyle,

            'configModal' => $resultConfig,
            'countConfigModal' => $countConfig,
            'imageConfigModal' => $imageConfig,

            'materialModal' => $resultMaterial,
            'countMaterialModal' => $countMaterial,
            'imageMaterialModal' => $imageMaterial,

            'kurs' => $this->getKurs(),
            'coef' => $this->getCoef(),
            'nds' => $this->getNDS(),

            'title' => $result->getTitle(),
            //FORMS
            'formRequestCall' => $this->getRequestCallForm(),
            'formRequestCallModal' => $this->getRequestCallForm(),
            'formFreeProject' => $this->getFreeProjectForm(),
            'formZayavkaRazmer' => $this->getZayavkaRazmer(),
            'formDesignerAtHome' => $this->getDesignerAtHome(),
            'formCostProject' => $this->getCostProject(),
            'formFreeDesignShag' => $this->getFreeDesignShagForm(),
            'form' => $this->getCallBackForm(),
        ]);
    }

    /**
     * @Route("/{slug}/", name="kuhni_parameters")
     * @param string $slug
     * @return Response
     */
    public function parametersAction(string $slug)
    {
        if (null !== $this->getRequest()->get('offset')){
            $offset = $this->getRequest()->get('offset');
            $limit = $offset + 10;
        }else{
            $offset = 0;
            $limit = $offset + 10;
        }
        if (($offset <> 0)&&($limit <> 10)){

            $result = $this->searchParametr($slug, $offset, $limit);

            if (!empty($result)){
                $image = array();
                foreach ($result as $item) {
                    $image[] = 'upload/kuhni/kitchens/' . $item['imageName'];
                }

                $kurs = $this->getKurs()->getSetting();
                $coef = $this->getCoef()->getSetting();
                $nds = $this->getNDS()->getSetting();

                $strResult = "<div class='container'><div class='row'><div class='col-xl-6 col-md-12 big-col'>";

                for ($i = 0; $i < count($result); $i++){
                    if ($i == 0){
                        $newPrice = round($result[$i]['price'] * $kurs * $nds * $coef);
                        $newNoDiscountPrice = number_format(round(($newPrice * $result[$i]['discount'])/100 + $newPrice), 0, '', ' ');
                        $newPrice = number_format($newPrice, 0, '', ' ');

                        $strResult .= "<a href='{$_SERVER['REQUEST_URI']}{$result[$i]['slug']}'>";
                        $strResult .= "<img class='slide-product-img big' src='/web/{$image[$i]}' alt={$result[$i]['keywords']} title={$result[$i]['title']}>";
                        $strResult .= '<span class="pos-bot-l"';
                        if ($result[$i]['discount'] == 0){
                            $strResult .= 'style="width:100%;"';
                        }
                        $strResult .= "><ul class='nav'><li class='left'><div class='text-left'><span class=first-name><b>{$result[$i]['title']}</b><br/>";
                        $strResult .= '</span></div></li>';

                        $strResult .= "<li class='right'><div class='text-right right'>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='text-right last-price'>старая цена <span class='through'> $newNoDiscountPrice <i class='fa fa-rub' aria-hidden='true'></i> </span><br/></span>";
                        }
                        $strResult .= "<span class='text-right now-price'>сейчас от $newPrice <i class='fa fa-rub' aria-hidden='true'></i></span>";
                        $strResult .= "</div></li></ul></span>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='pos-bot-r desc text-center'><span class='title'><b>{$result[$i]['discount']}%</b></span><br><span>скидка</span></span>";
                        }
                        $strResult .= "</a>";
                        $strResult .= "<button type='button' class='phone text-center' data-toggle='modal' data-target='#requestcall'><i class='fa fa-phone'></i></button>";
                        $strResult .= '<button type="button" id="like" data-id='.$result[$i]["id"].' style="margin-left: 10px;" class="like text-center"><i class="fa fa-heart"></i><span class="countLikes"> '.$result[$i]['likes'].'</span></button>';
                    }
                }
                $strResult .= "</div>";

                $strResult .= "<div class='col-xs-12 col-sm-12 col-md-12 col-xl-6'><div class='row'><div class='col-xs-12 col-sm-12 col-md-6 small-col no-margin-left full-screen'>";

                for ($i = 0; $i < count($result); $i++){
                    if (($i <= 2)&&($i > 0)){
                        $newPrice = round($result[$i]['price'] * $kurs * $nds * $coef);
                        $newNoDiscountPrice = number_format(round(($newPrice * $result[$i]['discount'])/100 + $newPrice), 0, '', ' ');
                        $newPrice = number_format($newPrice, 0, '', ' ');

                        $strResult .= "<div class='col-12 big-col'><a href='{$_SERVER['REQUEST_URI']}{$result[$i]['slug']}'>";

                        $strResult .= "<img class='slide-product-img' src='/web/{$image[$i]}' alt={$result[$i]['keywords']} title={$result[$i]['title']}>";

                        $strResult .= "<span class='pos-bot-l'><ul class='nav'>";
                        $strResult .= "<li class='left'><div class='text-left'><span class='first-name'><b>{$result[$i]['title']}</b><br/></span></div></li>";
                        $strResult .= "<li class='right'><div class='text-right right'><span class='text-right now-price'>сейчас от $newPrice <i class='fa fa-rub' aria-hidden='true'></i></span><br/>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='text-right last-price'>старая цена <span class='through'> $newNoDiscountPrice <i class='fa fa-rub' aria-hidden='true'></i></span></span>";
                        }
                        $strResult .= "</div></li></ul></span>";

                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='pos-bot-r desc text-center'><span class='title'><b>{$result[$i]['discount']}%</b></span><br><span>скидка</span></span>";
                        }
                        $strResult .= "</a>";
                        $strResult .= '<button type="button" class="phone text-center" data-toggle="modal" data-target="#requestcall"><i class="fa fa-phone"></i></button>';
                        $strResult .= '<button type="button" id="like" data-id='.$result[$i]["id"].' style="margin-left: 10px;" class="like text-center"><i class="fa fa-heart"></i><span class="countLikes"> '.$result[$i]['likes'].'</span></button></div>';
                    }
                }
                $strResult .= "</div><div class='col-xs-12 col-sm-12 col-md-6 small-col full-screen'>";

                for ($i = 0; $i < count($result); $i++){
                    if (($i <= 4)&&($i > 2)){
                        $newPrice = round($result[$i]['price'] * $kurs * $nds * $coef);
                        $newNoDiscountPrice = number_format(round(($newPrice * $result[$i]['discount'])/100 + $newPrice), 0, '', ' ');
                        $newPrice = number_format($newPrice, 0, '', ' ');

                        $strResult .= "<div class='col-12 big-col'><a href='{$_SERVER['REQUEST_URI']}{$result[$i]['slug']}'>";

                        $strResult .= "<img class='slide-product-img' src='/web/{$image[$i]}' alt={$result[$i]['keywords']} title={$result[$i]['title']}>";
                        $strResult .= "<span class='pos-bot-l'><ul class='nav'>";
                        $strResult .= "<li class='left'><div class='text-left'><span class='first-name'><b>{$result[$i]['title']}</b><br/></span></div></li>";
                        $strResult .= "<li class='right'><div class='text-right right'><span class='text-right now-price'>сейчас от $newPrice <i class='fa fa-rub' aria-hidden='true'></i></span><br/>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='text-right last-price'>старая цена <span class='through'> $newNoDiscountPrice <i class='fa fa-rub' aria-hidden='true'></i></span></span>";
                        }
                        $strResult .= "</div></li></ul></span>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='pos-bot-r desc text-center'><span class='title'><b>{$result[$i]['discount']}%</b></span><br><span>скидка</span></span>";
                        }
                        $strResult .= "</a>";
                        $strResult .= '<button type="button" class="phone text-center" data-toggle="modal" data-target="#requestcall"><i class="fa fa-phone"></i></button>';
                        $strResult .= '<button type="button" id="like" data-id='.$result[$i]["id"].' style="margin-left: 10px;" class="like text-center"><i class="fa fa-heart"></i><span class="countLikes"> '.$result[$i]['likes'].'</span></button></div>';
                    }
                }
                $strResult .= "</div></div></div></div></div>";

                $strResult .= "<div class='container'><div class='row'><div class='col-md-12 col-xl-6'>";
                $strResult .= "<div class='row'><div class='col-sm-12 col-md-6 small-col first-small-col full-screen'>";

                for ($i = 0; $i < count($result); $i++){
                    if (($i <= 6)&&($i > 4)){
                        $newPrice = round($result[$i]['price'] * $kurs * $nds * $coef);
                        $newNoDiscountPrice = number_format(round(($newPrice * $result[$i]['discount'])/100 + $newPrice), 0, '', ' ');
                        $newPrice = number_format($newPrice, 0, '', ' ');

                        $strResult .= "<div class='col-12 big-col'><a href='{$_SERVER['REQUEST_URI']}{$result[$i]['slug']}'>";
                        $strResult .= "<img class='slide-product-img' src='/web/{$image[$i]}' alt={$result[$i]['keywords']} title={$result[$i]['title']}>";
                        $strResult .= "<span class='pos-bot-l'><ul class='nav'>";
                        $strResult .= "<li class='left'><div class='text-left'><span class='first-name'><b>{$result[$i]['title']}</b><br/></span></div></li>";
                        $strResult .= "<li class='right'><div class='text-right right'><span class='text-right now-price'>сейчас от $newPrice <i class='fa fa-rub' aria-hidden='true'></i></span><br/>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='text-right last-price'>старая цена <span class='through'> $newNoDiscountPrice <i class='fa fa-rub' aria-hidden='true'></i>  </span></span>";
                        }
                        $strResult .= "</div></li></ul></span>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='pos-bot-r desc text-center'><span class='title'><b>{$result[$i]['discount']}%</b></span><br><span>скидка</span></span>";
                        }
                        $strResult .= "</a>";
                        $strResult .= '<button type="button" class="phone text-center" data-toggle="modal" data-target="#requestcall"><i class="fa fa-phone"></i></button>';
                        $strResult .= '<button type="button" id="like" data-id='.$result[$i]["id"].' style="margin-left: 10px;" class="like text-center"><i class="fa fa-heart"></i><span class="countLikes"> '.$result[$i]['likes'].'</span></button></div>';
                    }
                }
                $strResult .= "</div><div class='col-sm-12 col-md-6 small-col full-screen'>";

                for ($i = 0; $i < count($result); $i++){
                    if (($i <= 8)&&($i > 6)){
                        $newPrice = round($result[$i]['price'] * $kurs * $nds * $coef);
                        $newNoDiscountPrice = number_format(round(($newPrice * $result[$i]['discount'])/100 + $newPrice), 0, '', ' ');
                        $newPrice = number_format($newPrice, 0, '', ' ');

                        $strResult .= "<div class='col-12 big-col'><a href='{$_SERVER['REQUEST_URI']}{$result[$i]['slug']}'>";

                        $strResult .= "<img class='slide-product-img' src='/web/{$image[$i]}' alt={$result[$i]['keywords']} title={$result[$i]['title']}>";

                        $strResult .= "<span class='pos-bot-l'><ul class='nav'><li class='left'><div class='text-left'><span class='first-name'><b>{$result[$i]['title']}</b><br/></span></div></li>";
                        $strResult .= "<li class='right'><div class='text-right right'>";
                        $strResult .= "<span class='text-right now-price'>сейчас от $newPrice <i class='fa fa-rub' aria-hidden='true'></i></span><br/>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='text-right last-price'>старая цена <span class='through'> $newNoDiscountPrice <i class='fa fa-rub' aria-hidden='true'></i></span></span>";
                        }
                        $strResult .= "</div></li></ul></span>";

                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='pos-bot-r desc text-center'><span class='title'><b>{$result[$i]['discount']}%</b></span><br><span>скидка</span></span>";
                        }
                        $strResult .= "</a>";
                        $strResult .= '<button type="button" class="phone text-center" data-toggle="modal" data-target="#requestcall"><i class="fa fa-phone"></i></button>';
                        $strResult .= '<button type="button" id="like" data-id='.$result[$i]["id"].' style="margin-left: 10px;" class="like text-center"><i class="fa fa-heart"></i><span class="countLikes"> '.$result[$i]['likes'].'</span></button></div>';
                    }
                }
                $strResult .= "</div></div></div><div class='col-xl-6 col-md-12 big-col'>";

                for ($i = 0; $i < count($result); $i++){
                    if ($i == 9){
                        $newPrice = round($result[$i]['price'] * $kurs * $nds * $coef);
                        $newNoDiscountPrice = number_format(round(($newPrice * $result[$i]['discount'])/100 + $newPrice), 0, '', ' ');
                        $newPrice = number_format($newPrice, 0, '', ' ');

                        $strResult .= "<a href='{$_SERVER['REQUEST_URI']}{$result[$i]['slug']}' class='big-a-10'>";
                        $strResult .= "<img class='slide-product-img big' src='/web/{$image[$i]}' alt={$result[$i]['keywords']} title={$result[$i]['title']}>";

                        $strResult .= "<span class='pos-bot-l'";
                        if ($result[$i]['discount'] == 0){
                            $strResult .= 'style="width:100%;"';
                        }
                        $strResult .= "><ul class='nav'><li class='left'><div class='text-left'><span class='first-name'><b>{$result[$i]['title']}</b><br/></span>";
                        $strResult .= "</div></li><li class='right'><div class='text-right right'>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='text-right last-price'>старая цена <span class='through'> $newNoDiscountPrice <i class='fa fa-rub' aria-hidden='true'></i></span><br/></span>";
                        }
                        $strResult .= "<span class='text-right now-price'>сейчас от $newPrice <i class='fa fa-rub' aria-hidden='true'></i></span>";
                        $strResult .= "</div></li></ul></span>";
                        if ($result[$i]['discount'] != 0){
                            $strResult .= "<span class='pos-bot-r desc text-center'><span class='title'><b>{$result[$i]['discount']}%</b></span><br><span>скидка</span></span>";
                        }
                        $strResult .= "</a>";
                        $strResult .= '<button type="button" class="phone big-a-10 text-center" data-toggle="modal" data-target="#requestcall"><i class="fa fa-phone"></i></button>';
                        $strResult .= '<button type="button" style="left: 20px;" id="like" data-id='.$result[$i]["id"].' class="like text-center"><i class="fa fa-heart"></i><span class="countLikes"> '.$result[$i]['likes'].'</span></button>';
                    }
                }
                $strResult .= "</div></div></div>";

            }else{
                $strResult = "noMoreProduct";
            }

            return new Response($strResult);
        }else{
            //получение каталога товаров
            $resultCatalog = $this->getCatalogresult();
            $imageCatalog = $this->catalogImagePath($resultCatalog);

            $result = $this->searchParametr($slug);

            $image = array();
            foreach ($result as $item) {
                $image[] = 'upload/kuhni/kitchens/' . $item['imageName'];
            }

            $popular = $this->getPopular();
            $popularImage = array();
            foreach ($popular as $item) {
                $popularImage[] = 'upload/kuhni/kitchens/' . $item['imageName'];
            }

            $completedProjects = $this->getCompletedProjects();
            $completedProjectsImage = array();
            foreach ($completedProjects as $item) {
                $completedProjectsImage[] = 'upload/kuhni/kitchens/' . $item['imageName'];
            }

            //Хлебные крошки
            $breadcrumbs = $this->get('white_october_breadcrumbs');
            $breadcrumbs->addItem("Главная", $this->get("router")->generate("homepage"));
            $breadcrumbs->addItem("Кухни", $this->get("router")->generate("kuhni_list"));
            $breadcrumbs->addItem("Все кухни", $this->get("router")->generate('kuhni_parameters', ['slug' => 'kuhni-zov']));
            if ($slug != 'kuhni-zov'){
                $breadcrumbs->addItem("{$this->getNameBreadParam($slug)}");
            }

            //модальные окна для фиксированного футера
            $resultMaterial = $this->result('KuhniMaterial');
            $countMaterial = count($resultMaterial)-4;
            $imageMaterial = $this->arrayImagePath($resultMaterial, 'material');

            $resultStyle = $this->result('KuhniStyle');
            $countStyle = count($resultStyle)-4;
            $imageStyle = $this->arrayImagePath($resultStyle, 'style');

            $resultConfig = $this->result('KuhniConfig');
            $countConfig = count($resultConfig)-4;
            $imageConfig = $this->arrayImagePath($resultConfig, 'config');

            return $this->render('kuhni/kuhniParameters/index.html.twig', array(
                'kitchens' => $result,
                'image' => $image,
                'slug' => $slug,
                'catalog' => $resultCatalog,
                'imageCatalog' => $imageCatalog,

                'maps' => $this->getMapLocate(),
                'article' => $this->getArticle($slug),

                'populars' => $popular,
                'popularImage' => $popularImage,
                'completedProjects' => $completedProjects,
                'completedProjectImage' => $completedProjectsImage,

                'styleModal' => $resultStyle,
                'countStyleModal' => $countStyle,
                'imageStyleModal' => $imageStyle,

                'configModal' => $resultConfig,
                'countConfigModal' => $countConfig,
                'imageConfigModal' => $imageConfig,

                'materialModal' => $resultMaterial,
                'countMaterialModal' => $countMaterial,
                'imageMaterialModal' => $imageMaterial,

                'kurs' => $this->getKurs(),
                'coef' => $this->getCoef(),
                'nds' => $this->getNDS(),

                'title' => $this->getTitleOnHead($slug),

                'formRequestCall' => $this->getRequestCallForm(),
                'formRequestCallModal' => $this->getRequestCallForm(),
                'formZayavkaRazmer' => $this->getZayavkaRazmer(),
                'formDesignerAtHome' => $this->getDesignerAtHome(),
                'formCostProject' => $this->getCostProject(),
                'formFreeProject' => $this->getFreeProjectForm(),
                'formFreeDesignShag' => $this->getFreeDesignShagForm(),
                'form' => $this->getCallBackForm(),
            ));
        }
    }

    private function getPopular(){
        $result = $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Kuhni')
            ->createQueryBuilder('n')
            ->select('n')
            ->orderBy('n.likes', 'DESC')
            ->getQuery()
            ->setMaxResults(12)
            ->getArrayResult();
        return $result;
    }

    private function getTitleKuhni()
    {
        return $this->getDoctrine()->getManager()
            ->getRepository( 'KuhniBundle:Settings' )
            ->findOneByName('title-kuhni')->getSetting();
    }

    private function getCompletedProjects(){
        $result = $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Kuhni')
            ->createQueryBuilder('n')
            ->select('n')
            ->where('n.countProjects <> 0')
            ->orderBy('n.countProjects', 'DESC')
            ->getQuery()
            ->setMaxResults(12)
            ->getArrayResult();
        return $result;
    }

    private function searchParametr(string $slug, $offset = 0, $limit = 10){
        if ($slug == 'kuhni-zov'){
            $result = $this->getDoctrine()->getManager()
                ->getRepository('KuhniBundle:Kuhni')
                ->createQueryBuilder('n')
                ->select('n')
                ->orderBy('n.likes', 'DESC')
                ->getQuery()
                ->setFirstResult($offset)
                ->setMaxResults($limit)
                ->getArrayResult();
        }else{
            $id = array();
            $entity = $this->getDoctrine()->getManager()
                ->getRepository('KuhniBundle:KuhniStyle')
                ->findBy(array('slug' => $slug));
            if (empty($entity)){
                $entity = $this->getDoctrine()->getManager()
                    ->getRepository('KuhniBundle:KuhniConfig')
                    ->findBy(array('slug' => $slug));
                if (empty($entity)){
                    $entity = $this->getDoctrine()->getManager()
                        ->getRepository('KuhniBundle:KuhniMaterial')
                        ->findBy(array('slug' => $slug));
                    if (empty($entity)){
                        $entity = $this->getDoctrine()->getManager()
                            ->getRepository('KuhniBundle:KuhniColor')
                            ->findOneBy(array('slug' => $slug));
                        $result = $this->getDoctrine()->getManager()
                            ->getRepository('KuhniBundle:Kuhni')
                            ->createQueryBuilder('n')
                            ->select('n')
                            ->join('n.kuhniColors', 's')
                            ->where('s = :id')
                            ->orderBy('n.likes', 'DESC')
                            ->setParameter('id', $entity)
                            ->setFirstResult($offset)
                            ->setMaxResults($limit)
                            ->getQuery()
                            ->getArrayResult();
                    }else{
                        if (is_array($entity)){
                            foreach ($entity as $item){
                                $id[] = $item->getId();
                            }
                        }else{
                            $id[] = $entity->getId();
                        }
                        $result = $this->getDoctrine()->getManager()
                            ->getRepository('KuhniBundle:Kuhni')
                            ->createQueryBuilder('n')
                            ->select('n')
                            ->where('n.idKuhniMaterial IN (:id)')
                            ->orderBy('n.likes', 'DESC')
                            ->setParameters(array('id' => $id))
                            ->getQuery()
                            ->setFirstResult($offset)
                            ->setMaxResults($limit)
                            ->getArrayResult();
                    }
                }else{
                    if (is_array($entity)){
                        foreach ($entity as $item){
                            $id[] = $item->getId();
                        }
                    }else{
                        $id[] = $entity->getId();
                    }
                    $result = $this->getDoctrine()->getManager()
                        ->getRepository('KuhniBundle:Kuhni')
                        ->createQueryBuilder('n')
                        ->select('n')
                        ->where('n.idKuhniConfig IN (:id)')
                        ->orderBy('n.likes', 'DESC')
                        ->setParameters(array('id' => $id))
                        ->getQuery()
                        ->setFirstResult($offset)
                        ->setMaxResults($limit)
                        ->getArrayResult();
                }
            }else{
                if (is_array($entity)){
                    foreach ($entity as $item){
                        $id[] = $item->getId();
                    }
                }else{
                    $id[] = $entity->getId();
                }
                $result = $this->getDoctrine()->getManager()
                    ->getRepository('KuhniBundle:Kuhni')
                    ->createQueryBuilder('n')
                    ->select('n')
                    ->where('n.idKuhniStyle IN (:id)')
                    ->orderBy('n.likes', 'DESC')
                    ->setParameters(array('id' => $id))
                    ->getQuery()
                    ->setFirstResult($offset)
                    ->setMaxResults($limit)
                    ->getArrayResult();
            }
        }
        return $result;
    }

    private function getArticle(string $slug)
    {
        if ($slug == 'kuhni-zov'){
            $entity = $this->getDoctrine()->getManager()
                ->getRepository( 'KuhniBundle:Settings' )
                ->findOneByName('article')->getSetting();
            return $entity;
        }else{
            $entity = $this->getDoctrine()->getManager()
                ->getRepository( 'KuhniBundle:KuhniStyle' )
                ->findOneBySlug($slug);
            if (is_null( $entity )) {
                $entity = $this->getDoctrine()->getManager()
                    ->getRepository( 'KuhniBundle:KuhniConfig' )
                    ->findOneBySlug($slug);
                if (is_null( $entity )) {
                    $entity = $this->getDoctrine()->getManager()
                        ->getRepository( 'KuhniBundle:KuhniMaterial' )
                        ->findOneBySlug($slug);
                    if (is_null( $entity )) {
                        $entity = $this->getDoctrine()->getManager()
                            ->getRepository( 'KuhniBundle:KuhniColor' )
                            ->findOneBySlug($slug);
                        if (is_null( $entity )) {
                            return ' ';
                        }
                    }
                }
            }
        }
        return $entity->getArticle();
    }

    private function getCatalogResult(){
        return $this->getDoctrine()->getManager()->getRepository('KuhniBundle:Catalog')
            ->createQueryBuilder('n')
            ->select('n')
            ->orderBy('n.id')
            ->getQuery()
            ->getResult();
    }

    private function getNameBreadParam(string $slug){
        if ($slug == 'kuhni-zov'){
            return 'Все кухни';
        }else{
            $entity = $this->getDoctrine()->getManager()
                ->getRepository('KuhniBundle:KuhniStyle')
                ->findOneBy(array('slug' => $slug));
            if (empty($entity)) {
                $entity = $this->getDoctrine()->getManager()
                    ->getRepository('KuhniBundle:KuhniConfig')
                    ->findOneBy(array('slug' => $slug));
                if (empty($entity)) {
                    $entity = $this->getDoctrine()->getManager()
                        ->getRepository('KuhniBundle:KuhniMaterial')
                        ->findOneBy(array('slug' => $slug));
                    if (empty($entity)) {
                        $entity = $this->getDoctrine()->getManager()
                            ->getRepository('KuhniBundle:KuhniColor')
                            ->findOneBy(array('slug' => $slug));
                    }
                }
            }
            return $entity->getTitle();
        }
    }

    private function getTitleOnHead(string $slug){
        if ($slug == 'kuhni-zov'){
            return 'Все кухни фабрики ЗОВ';
        }else{
            $entity = $this->getDoctrine()->getManager()
                ->getRepository('KuhniBundle:KuhniStyle')
                ->findOneBy(array('slug' => $slug));
            if (empty($entity)) {
                $entity = $this->getDoctrine()->getManager()
                    ->getRepository('KuhniBundle:KuhniConfig')
                    ->findOneBy(array('slug' => $slug));
                if (empty($entity)) {
                    $entity = $this->getDoctrine()->getManager()
                        ->getRepository('KuhniBundle:KuhniMaterial')
                        ->findOneBy(array('slug' => $slug));
                    if (empty($entity)) {
                        $entity = $this->getDoctrine()->getManager()
                            ->getRepository('KuhniBundle:KuhniColor')
                            ->findOneBy(array('slug' => $slug));
                    }
                }
            }
            return $entity->getCaption();
        }
    }

    private function getRequestCallForm()
    {
        $requestCall = new RequestCall();

        $formRequestCall = $this->createFormBuilder($requestCall)
            ->add('name', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШ ТЕЛЕФОН *',
                    'pattern' => '[\+][7]{1}[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}',
                    'title' => 'Телефон в формате +71234567890',
                    'class' => 'form-control',
                    'type' => 'tel',
                ],
                'label' => false,
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни» ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->getForm()->createView();

        return $formRequestCall;
    }

    private function getFreeProjectForm()
    {
        $freeProject = new freeDesignProject();

        $formFreeProject = $this->createFormBuilder($freeProject)
            ->add('name', TextType::class, array(
                'attr' => [
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'pattern' => '[\+][7]{1}[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}',
                    'title' => 'Телефон в формате +71234567890',
                    'class' => 'form-control',
                    'type' => 'tel',
                ],
                'label' => false,
            ))
            ->add('email', EmailType::class, array(
                'attr' => [
                    'placeholder' => 'Ваш EMAIL',
                    'class' => 'form-control',
                ],
                'required' => false,
                'label' => false,
            ))
            ->add('message', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ СООБЩЕНИЕ *',
                    'class' => 'form-control',
                ],
                'label' => false,
            ))
            ->add('imageFile', VichImageType::class, array(
                'required'      => false,
                'allow_delete'  => true,
                'download_link' => false,
                'label'         => false,
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни» ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->getForm()->createView();

        return $formFreeProject;
    }

    private function getFreeDesignShagForm()
    {
        $FreeDesignShag = new DesignProjectShag();

        $formFreeDesignShag = $this->createFormBuilder($FreeDesignShag)
            ->add('name', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШ ТЕЛЕФОН *',
                    'id' => '123',
                    'class' => 'form-control',
                    'type' => 'tel',
                ],
                'label' => false,
            ))
            ->add('email', EmailType::class, array(
                'attr' => [
                    'placeholder' => 'Ваш EMAIL *',
                    'class' => 'form-control'
                ],
                'label' => false,
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни»  ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->getForm()->createView();

        return $formFreeDesignShag;
    }

    private function getZayavkaRazmer()
    {
        $ZayavkaRazmer = new ZayavkaRazmer();

        $formZayavkaRazmer = $this->createFormBuilder($ZayavkaRazmer)
            ->add('name', TextType::class, array(
                'attr' => [
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШ ТЕЛЕФОН *',
                    'class' => 'form-control',
                    'type' => 'tel',
                    'pattern' => '[\+][7]{1}[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}',
                    'title' => 'Телефон в формате +71234567890',
                ],
                'label' => false,
            ))
            ->add('message', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ СООБЩЕНИЕ *',
                    'class' => 'form-control',
                ],
                'label' => false,
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни» ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->getForm()->createView();

        return $formZayavkaRazmer;
    }

    private function getDesignerAtHome()
    {
        $DesignerAtHome = new DesignerAtHome();

        $formDesignerAtHome = $this->createFormBuilder($DesignerAtHome)
            ->add('name', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШ ТЕЛЕФОН *',
                    'class' => 'form-control',
                    'pattern' => '[\+][7]{1}[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}',
                    'title' => 'Телефон в формате +71234567890',
                    'type' => 'tel',
                ],
                'label' => false,
            ))
            ->add('message', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ СООБЩЕНИЕ *',
                    'class' => 'form-control',
                ],
                'required' => false,
                'label' => false,
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни» ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->getForm()->createView();

        return $formDesignerAtHome;
    }

    private function getCallBackForm()
    {
        $callback = new CallBack();

        $form = $this->createFormBuilder($callback)
            ->add('name', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('email', EmailType::class, array(
                'label' => false,
                'attr' => [
                    'placeholder' => 'Ваш EMAIL *',
                    'class' => 'form-control'
                ]
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШ ТЕЛЕФОН *',
                    'pattern' => '[\+][7]{1}[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}',
                    'title' => 'Телефон в формате +71234567890',
                    'class' => 'form-control',
                    'type' => 'tel',
                ],
                'label' => false,
            ))
            ->add('message', TextareaType::class, array(
                'label' => false,
                'attr' => [
                    'placeholder' => 'Ваше Сообщение *',
                    'class' => 'form-control',
                    'maxlength' => '254'
                ]
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни» ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->getForm()->createView();

        return $form;
    }

    private function getCostProject()
    {
        $costProject = new CostProject();

        $formCostProject = $this->createFormBuilder($costProject)
            ->add('name', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ ИМЯ *',
                    'pattern' => '^[А-Яа-яЁё\s]{3,}',
                    'title' => 'Имя на Русском',
                    'class' => 'form-control'
                ],
                'label' => false
            ))
            ->add('phone', NumberType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШ ТЕЛЕФОН *',
                    'pattern' => '[\+][7]{1}[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}',
                    'title' => 'Телефон в формате +71234567890',
                    'class' => 'form-control',
                    'type' => 'tel',
                ],
                'label' => false,
            ))
            ->add('email', EmailType::class, array(
                'attr' => [
                    'placeholder' => 'Ваш EMAIL',
                    'class' => 'form-control',
                ],
                'required' => false,
                'label' => false,
            ))
            ->add('message', TextType::class, array(
                'attr' => [
                    'placeholder' => 'ВАШЕ СООБЩЕНИЕ *',
                    'class' => 'form-control',
                ],
                'label' => false,
            ))
            ->add('idSalon', EntityType::class, array(
                'class' => 'KuhniBundle:Salon',
                'query_builder' => function (EntityRepository $er) {
                    $qb = $er->createQueryBuilder('u');
                    return
                        $qb->where('u.vivodSelect = 1')->orderBy('u.id', 'ASC');
                },
                'attr' => [
                    'class' => 'form-control',
                ],
                'choice_label' => function ($idSalon) {
                    $address = '';
                    if (!empty($idSalon->getMetroId())){
                        $address .= $idSalon->getMetroId()->getNameStation() . ' | ';
                        $this->colorStation = $idSalon->getMetroId()->getColor();
                    }else{
                        $address .= $idSalon->getGorod() . ' | ';
                    }
                    if (!empty($idSalon->getTc())){
                        $address .= $idSalon->getTc() . " ";
                    }else{
                        $address .= "«Белорусские кухни» ";
                    }
                    $address .= $idSalon->getAddress();
                    return $address;
                },
                'choice_attr' => function($idSalon) {
                    if ($idSalon->getGorod() == 'Москва'){
                        $class = 'metro';
                    }else{
                        $class = 'nometro';
                    }
                    return array('class' => $class, 'id' => $this->colorStation);
                },
                'label' => false,
            ))
            ->add('imageFile', VichImageType::class, array(
                'required'      => false,
                'allow_delete'  => true,
                'download_link' => false,
                'label'         => false,
            ))
            ->getForm()->createView();

        return $formCostProject;
    }

    /**
     * @param $result
     * @return array
     */
    private function catalogImagePath(array $result){
        $imageCatalog = array();
        if (!empty($result)){
            foreach ($result as $item) {
                $imageCatalog[] = 'upload/catalog/' . $item->getImageName();
            }
        }else{
            $imageCatalog[] = 'bundles/kuhni/img/no_image.jpg';
        }
        return $imageCatalog;
    }

    /**
     * @param $result
     * @param string $path
     * @return array|string
     */
    private function imagePath($result, string $path){
        if (!empty($result)){
            return 'upload/kuhni/' . $path . '/' . $result->getImageName();
        }else{
            return 'bundles/kuhni/img/no_image.jpg';
        }
    }

    /**
     * @param $result
     * @return array|string
     */
    private function arrayImagePath(array $result, $path){
        if (!empty($result)){
            $image = array();
            foreach ($result as $item) {
                $image[] = 'upload/kuhni/' . $path . '/' . $item->getImageName();
            }
            return $image;
        }else{
            return 'bundles/kuhni/img/no_image.jpg';
        }
    }

    /**
     * @param string $db
     * @return mixed
     */
    private function result(string $db){
        $db = 'KuhniBundle:'.$db;
        $titles = $this->getDoctrine()->getManager()->getRepository($db)
            ->createQueryBuilder('n')
            ->select('DISTINCT n.title')
            ->getQuery()
            ->getResult();

        foreach ($titles as $title) {
            $result[] = $this->getDoctrine()->getManager()
                ->getRepository($db)
                ->findOneBy(array('title' => $title['title']));
        }
        return $result;
    }

    private function getMapLocate()
    {
        $em = $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Salon');
        $qb = $em->createQueryBuilder('u');
        $locate =
            $qb->where('u.vivodKarta = 1')->orderBy('u.id', 'ASC');
        return $locate->getQuery()->getResult();
    }

    private function getKurs(){
        return $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Settings')
            ->findOneByName('kurs');
    }

    private function getNDS(){
        return $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Settings')
            ->findOneByName('nds');
    }

    private function getCoef(){
        return $this->getDoctrine()->getManager()
            ->getRepository('KuhniBundle:Settings')
            ->findOneByName('coef');
    }
}