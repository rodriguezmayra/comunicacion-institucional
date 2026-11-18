 <?php 

class GrupoEntidad{

    private string $nombreGrupo;
    private string $turno;
    private string $nombreOrientacion;

    

    public function __construct (string $nombreGrupo, string $turno, string $nombreOrientacion) {
        $this->nombreGrupo = $nombreGrupo;
        $this->turno = $turno;
        $this->nombreOrientacion = $nombreOrientacion;
    }

    public function getNombreGrupo (): string {
        return $this->nombreGrupo;
    }

    public function setNombreGrupo (string $nombreGrupo): void {
        $this->nombreGrupo = $nombreGrupo;
    }

    public function getTurno (): string {
        return $this->turno;
    }

    public function setTurno (string $turno): void {
        $this->turno = $turno;
    }
    public function getNombreOrientacion(): string{
        return $this->nombreOrientacion;
    }
    public function setNombreOrientacion(string $nombreOrientacion){
        $this->nombreOrientacion = $nombreOrientacion();
    }

}

?> 