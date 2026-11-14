<?php
//namespace app\logica\entidades;
class NotificacionEntidad{
    private int $identificador;
    private String $nombre;
    private String $descripcion;
    private String $publico;
    private ?String $fecha;

    public function __construct(int $identificador = 0, String $nombre = "", String $descripcion = "", String $publico = "", String $fecha = "")
    {
        $this->identificador = $identificador;
        $this->nombre = $nombre;
        $this->descripcion = $descripcion;
        $this->publico = $publico;
        $this->fecha = $fecha;
    }

    public function getIdentificador(): int
    {
        return $this->identificador;
    }

    public function getNombre(): String
    {
        return $this->nombre;
    }

    public function getDescripcion(): String
    {
        return $this->descripcion;
    }

    public function getPublico(): String
    {
        return $this->publico;
    }
    
    public function getFecha(): ?String
    {
        return $this->fecha;
    }

    public function setIdentificador (int $identificador): void
    {
        $this->identificador = $identificador;
    }

    public function setNombre (String $nombre): void
    {
        $this->nombre = $nombre;
    }

    public function setDescripcion (String $descripcion): void
    {
        $this->descripcion = $descripcion;
    }

    public function setPublico (String $publico): void
    {
        $this->publico = $publico;
    }

    
    public function setFecha (String $fecha): void
    {
        $this->fecha = $fecha;
    }

}




?>