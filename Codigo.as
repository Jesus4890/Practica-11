package  {
	import flash.display.MovieClip;
	public class Codigo extends MovieClip{
		//Se crean 2 variables para almacenar las areas
			private var AreaCirculo:Number;
			private var AreaTriangulo:Number;
		public function areaCriculoF(val:Number){
			//Se recibe el dato que se va a calcular y se hacen las operaciones
			var radio:Number = val;
			AreaCirculo = 3.1416 * (radio*radio);
		}
		//Para asingar valores
		public function Circulo():String{
			//Regresa el resultado conviertiendolo a texto
			return AreaCirculo.toString();		
		}
		//Para el calculo del area del Triangulo
		public function areaTrianguloF(val1:Number,val2:Number){
			//Toma los valores que vienen desde las cajas de textos
			var base:Number = val1;
			var altura:Number = val2;
			//Hace calculos para la operacion
			AreaTriangulo =(base*altura)/2;
		}
		//Para asingar valores
		public function Triangulo():String{
			//Regresa el resultado conviertiendolo a texto
			return AreaTriangulo.toString();		
		}
	}
	
}
