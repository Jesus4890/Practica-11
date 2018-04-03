package  {
	import flash.display.MovieClip;
	
	public class Main extends MovieClip {
var c:String;
	var s:Number;//"" que almacena el sueldo
	var e:Number;// "" que almacena la edad 
	var contaE:int=0;//contador que contara los empleados
	var NE:int=1;
	 var contadorM:int;//"" de mujeres
	 var contadorH:int;//"" de hombres
	 var AM:int;//"" para el aumento de mujeres
	var Vsexo:Array=new Array();//vector para el sexo
var Vnom:Array= new Array();//"" para los nombres
var Vedad:Array= new Array();//"" para las edades
var Vsueldo:Array= new Array();//""para los sueldos
var ce:int=0;//variable que cuentas las mujeres y los hombres
var i:int=0;//variable que determina las posiciones de los vectores
var AH:int;//"" para el aumento de los hombres
var ATE:int;//"" para el aumentos de la tercera edad
var contadorTE:int;//contador que cuenta a los de tercera edad
var NO:int;//"" de la nomina
var men:int;//""de hombres
var fem:int;//"" de mujres
var totalH:int;//cuenta el total de hombres
var totalF:int;//cuenta el total de mujeres
var totalT:int;//cuenta el total
var totalTF:int;//cuenta el total de empleados.
		public function Main {
			var po:Tween = new Tween(gru,"x",Regular.easeOut,-200,300,3,true);
			var no:Tween = new Tween(nom1,"y",None.easeOut,-300,50,3,true);
			var pra:Tween = new Tween(herra,"x",Regular.easeOut,-200,150,3,true);
		}
		public function fcal():void{
			
			n=nom.text;
			e=Number(ed.text);
			s=Number(sue.text);
			NO=NO+s;//contador de nomina es igual a nomina mas sueldo
			NE=contaE+1;
	textoe.text=String(i);//se le pone en el texto dinamico textoe */
	i++;//es la posicion en la que se cuentren los vectores
	totalT++;
			if(Number(n) || n==""){//si "n" es un numero o esta vacio entra a la condicion
		nom.text="Caracter(es) no validos, solo letras";
	}
	if(isNaN(s) || s==0){//si s es un caracter o es igual 0 entra la condicion
		sue.text="Solo numeros y mayores a 0";
	}
	if(isNaN(e) || e==0){
		ed.text="Solo numeros y mayores a 0";
	}
	if(M.selected==false && F.selected==false){//si las ambas casillas no estan marcadas un texto dinamico
	valo.text="seleccione una casilla";//se le pone una seleccion casilla
		}
		if(e>=18 && e<=25 && F.selected==true){//si la edad es entre 18 y 25 y la checkbox esta activada 
		contadorM=contadorM+1;//se le 1 suma al contador
		AM=s*.15;//se le saca el porcentaje a sueldo
		s=s+AM;//se le suma el porcentajes al sueldo.
		//men.visible=false;
	}
	if(e>=30 && e<=35 && M.selected==true){//lo mismo pero en el caso de los hombres pero en este caso entre 30 a 35
		contadorH=contadorH+1;
		AH=s*.5;
		s=s+AH;
		//men2.visible=false;
	}
	if(e>=60){//si la edad es mayor a 60
		contadorTE=contadorTE+1;//se le suma 1 al contador
		ATE=s*.20;//se le saca el porcentaje
		s=s+ATE;
		//men3.visible=false;
	}
	
	
	if(M.selected==true){//si el chechbox M esta seleccionado 
		men=men+1;//mas uno al contador
		c="masculino";//c es igual a masculino
		Vsexo[i]=c;//vector en la posicion "i"(1) es igual masculino
		
		F.selected=false;//checkbox F es falso
	}else if(F.selected==true){
		fem=fem+1;
		c="Femenino";
		Vsexo[i]=c;
		M.selected=false;
	}
	
		
		Vnom[i]=n;//vector en la posicion "i" es igual a n
		Vedad[i]=e;
		Vsueldo[i]=s;
		
		//textoe.text=String(contaE);
		
	totalH=contadorH+men;// suma los hombres y las mujeres
	totalF=contadorM+fem;
	totalTF=totalH+totalF;
	ce=contadorH+contadorM;
	trace(Vnom[i]);
	trace(Vedad[i]);
	trace(Vsexo[i]);
	trace(Vsueldo[i]);
	trace("empleado"+i);
	gotoAndStop(3);
		}
		public function botonjuego(event:MouseEvent){
			gotoAndStop(2);
	}
	public function fbv2(event:MouseEvent){
		gotoAndStop(2);
	}
	public function vectornom(){
		return Vnom.toString();
	}
	
public function ffin(event:MouseEvent){
	gotoAndStop(4);
}
}
}

	}
	
}
