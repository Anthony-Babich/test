<?php

namespace Kuhni\Bundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ZovZakaz
 *
 * @ORM\Table(name="zov_zakaz")
 * @ORM\Entity(repositoryClass="Kuhni\Bundle\Repository\ZovZakazRepository")
 */
class ZovZakaz
{
    use TraitId;

    /**
     * @var string
     * @ORM\Column(name="number", type="string", length=255)
     */
    private $number;

    /**
     * @var \DateTime
     * @ORM\Column(name="date", type="date")
     */
    private $date;

    /**
     * @var string
     * @ORM\Column(name="orderNumber", type="string", length=255, unique=true)
     */
    private $orderNumber;

    /**
     * @ORM\ManyToOne(targetEntity="Kuhni\Bundle\Entity\Salon", cascade={"persist"})
     * @ORM\JoinColumn(name="id_salon", referencedColumnName="id")
     */
    private $idSalon;

    /**
     * @ORM\ManyToOne(targetEntity="Kuhni\Bundle\Entity\ZovZakazStatus", cascade={"persist"})
     * @ORM\JoinColumn(name="id_status", referencedColumnName="id")
     */
    private $idStatus;

    /**
     * Set number
     * @param string $number
     * @return ZovZakaz
     */
    public function setNumber($number)
    {
        $this->number = $number;
        return $this;
    }

    /**
     * Get number
     * @return string
     */
    public function getNumber()
    {
        return $this->number;
    }

    /**
     * Set date
     * @param \DateTime $date
     * @return ZovZakaz
     */
    public function setDate($date)
    {
        $this->date = $date;
        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Set orderNumber
     * @param string $orderNumber
     * @return ZovZakaz
     */
    public function setOrderNumber($orderNumber)
    {
        $this->orderNumber = $orderNumber;
        return $this;
    }

    /**
     * Get orderNumber
     * @return string
     */
    public function getOrderNumber()
    {
        return $this->orderNumber;
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
     * @return ZovZakaz
     */
    public function setIdSalon(Salon $idSalon)
    {
        $this->idSalon = $idSalon;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getIdStatus()
    {
        return $this->idStatus;
    }

    /**
     * @param ZovZakazStatus $idSalon
     * @return ZovZakaz
     */
    public function setIdStatus(ZovZakazStatus $idStatus)
    {
        $this->idStatus = $idStatus;
        return $this;
    }
}