package  {
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;

	public class Portada extends MovieClip{

		public function Portada() {
			//Instancias para llamar los tweens a la portada
			//Mover numeros de los tween
			var poli_mcs:Tween = new Tween(gru,"x",Regular.easeOut,-200,300,3,true);
			var nombre_mcs:Tween = new Tween(nom,"y",None.easeOut,-300,50,3,true);
			var pra_mcs:Tween = new Tween(herra,"x",Regular.easeOut,-200,150,3,true);
			
			
		}
	}
}
