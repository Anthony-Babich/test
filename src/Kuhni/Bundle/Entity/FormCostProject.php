<?php

namespace Kuhni\Bundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * FormCostProject
 * @Vich\Uploadable
 *
 * @ORM\Table(name="form_cost_project")
 * @ORM\Entity(repositoryClass="Kuhni\Bundle\Repository\FormCostProjectRepository")
 */
class FormCostProject
{
    use TraitId;

    /**
     * FormCostProject constructor.
     */
    public function __construct()
    {
        $this->setUpdated(new \DateTime());
    }

    /**
     * @ORM\ManyToOne(targetEntity="Kuhni\Bundle\Entity\Salon", cascade={"persist"})
     * @ORM\JoinColumn(name="id_salon", referencedColumnName="id")
     */
    private $idSalon;

    /**
     * @var string
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var int
     * @ORM\Column(name="phone", type="string")
     */
    private $phone;

    /**
     * @var string
     * @ORM\Column(name="email", type="string", length=255)
     */
    private $email;

    /**
     * @var string
     * @ORM\Column(name="message", type="string", length=255)
     */
    private $message;

    /**
     * @var string
     * @ORM\Column(name="url", type="string", length=255)
     */
    private $url;

    /**
     * @var string
     * @ORM\Column(name="geoIP", type="string", length=255)
     */
    private $geoIP;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * @Vich\UploadableField(mapping="kuhni_zakazy_cost_project", fileNameProperty="imageName", size="imageSize")
     * @var File
     */
    private $imageFile;
    /**
     * @ORM\Column(type="string", length=255)
     * @var string
     */
    private $imageName;
    /**
     * @ORM\Column(type="integer")
     * @var integer
     */
    private $imageSize;
    /**
     * @ORM\Column(type="datetime")
     * @var \DateTime
     */
    private $updated;

    /**
     * Set name
     * @param string $name
     * @return FormCostProject
     */
    public function setName($name)
    {
        $this->name = $name;
        return $this;
    }

    /**
     * Get name
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set phone
     * @param string $phone
     * @return FormCostProject
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;
        return $this;
    }

    /**
     * Get phone
     * @return string
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set email
     * @param string $email
     * @return FormCostProject
     */
    public function setEmail($email)
    {
        $this->email = $email;
        return $this;
    }

    /**
     * Get email
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set message
     * @param string $message
     * @return FormCostProject
     */
    public function setMessage($message)
    {
        $this->message = $message;
        return $this;
    }

    /**
     * Get message
     * @return string
     */
    public function getMessage()
    {
        return $this->message;
    }

    /**
     * Set url
     * @param string $url
     * @return FormCostProject
     */
    public function setUrl($url)
    {
        $this->url = $url;
        return $this;
    }

    /**
     * Get url
     * @return string
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * Set geoIP
     * @param string $geoIP
     * @return FormCostProject
     */
    public function setGeoIP($geoIP)
    {
        $this->geoIP = $geoIP;
        return $this;
    }

    /**
     * Get geoIP
     * @return string
     */
    public function getGeoIP()
    {
        return $this->geoIP;
    }

    /**
     * @return \DateTime
     */
    public function getUpdated(): \DateTime
    {
        return $this->updated;
    }

    /**
     * @param \DateTime $updated
     * @return FormCostProject
     */
    public function setUpdated(\DateTime $updated)
    {
        $this->updated = $updated;
        return $this;
    }

    /**
     * @param File|\Symfony\Component\HttpFoundation\File\UploadedFile $image
     * @return FormCostProject
     */
    public function setImageFile(File $image = null)
    {
        $this->imageFile = $image;
        if ($image) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->updated = new \DateTimeImmutable();
        }
        return $this;
    }

    /**
     * @return File|null
     */
    public function getImageFile()
    {
        return $this->imageFile;
    }

    /**
     * @param string $imageName
     * @return FormCostProject
     */
    public function setImageName($imageName)
    {
        $this->imageName = $imageName;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getImageName()
    {
        return $this->imageName;
    }

    /**
     * @param integer $imageSize
     * @return FormCostProject
     */
    public function setImageSize($imageSize)
    {
        $this->imageSize = $imageSize;
        return $this;
    }

    /**
     * @return integer|null
     */
    public function getImageSize()
    {
        return $this->imageSize;
    }

    /**
     * @return mixed
     */
    public function getIdSalon()
    {
        return $this->idSalon;
    }

    /**
     * @param mixed $idSalon
     * @return FormCostProject
     */
    public function setIdSalon($idSalon)
    {
        $this->idSalon = $idSalon;
        return $this;
    }
}