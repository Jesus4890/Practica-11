package  {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	public class main1 extends MovieClip{

		public function main1() {
			
		}
public function gra(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("Gravedad.mp4");
			addChild(v);
}
public function grai(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("Practica2HM.fla");
			addChild(v);
}
public function disi(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("diseño en ingles.mp4");
			addChild(v);
}
public function demoi(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("Demostacion.mp4");
			addChild(v);
}
public function pji(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("puntuajes ingles.mp4");
			addChild(v);
}
public function ei(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("exportacion ingles.mp4");
			addChild(v);
}
public function jugai(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("jugador ingles.mp4");
			addChild(v);
}
public function pi(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("Plataformas.mp4");
			addChild(v);
}
	}
	
}
