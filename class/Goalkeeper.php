<?
include_once('Players.php');
class Goalkeeper extends Players{
	public $handling;
	public $aerial;
	public $foothability;
	public $oneaone;
	public $reflexes;
	public $rushingout;
	public $kicking;
	public $throwing;

	public function skillIndex(){
		$physical=$this->stamina+$this->speed+$this->resistance+$this->jump;
		$psychologic=$this->workrate;$this->concentration+$this->decision+$this->positioning+$this->vision+$this->unpredictability+$this->communication;
		$technical=$this->handling+$this->aerial+$this->foothability+$this->oneaone+$this->reflexes+$this->rushingout+$this->kicking+$this->throwing;
		$skill_index=$physical+$technical+$psychologic;
		return $this->skill_index;
	}
	public static function addHistory($id_player,$id_club,$season){
		parent::addHistory($id_player,$id_club,$season);
	}
}