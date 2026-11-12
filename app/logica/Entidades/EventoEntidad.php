<?php
require_once 'app/logica/Entidades/NotificacionEntidad.php';

class EventoEntidad extends NotificacionEntidad {
    private DateTimeImmutable $horaInicio;
    private DateTimeImmutable $horaFinal;
    private string $fechaInicio;
    private ?string $fechaFinal;

    public function __construct(int $identificador, DateTimeImmutable $horaInicio, ?DateTimeImmutable $horaFinal, string $fechaInicio, string $fechaFinal) {
        parent::__construct($identificador);
        $this->horaInicio = $horaInicio;
        $this->horaFinal = $horaFinal;
        $this->fechaInicio = $fechaInicio;
        $this->fechaFinal = $fechaFinal;

    }
    public function getHoraInicio(): DateTimeImmutable
    {
        return $this->horaInicio;
    }
     public function setHoraInicio(DateTimeImmutable $horaInicio):void
    {
        $this->horaInicio=$horaInicio;
    }

     public function getHoraFinal(): DateTimeImmutable
    {
        return $this->horaFinal;
    }

     public function setHoraFinal(DateTimeImmutable $horaFinal):void
    {
        $this->horaFinal=$horaFinal;
    }


    public function getFechaInicio(): string
    {
        return $this->fechaInicio;
    }
     public function setFechaInicio(string $fechaInicio):void
    {
        $this->fechaInicio=$fechaInicio;
    }

     public function getFechaFinal(): string
    {
        return $this->fechaFinal;
    }
     public function setFechaFinal(string $fechaFinal):void
    {
        $this->fechaFinal=$fechaFinal;
    }

    


}
?>