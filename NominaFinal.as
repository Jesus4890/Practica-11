package  {
	import flash.display.MovieClip;
	
	public class NominaFinal extends MovieClip{
		//Parte donde hacemos la declaracion de variables en las cuales me he dado cuenta que en clases
		//Si no las inicializo en cero no me corre o sino pongo las comas me da error entre otras cosas.
		private var Nombre:String="";
		private var Edad:Number=0;
		private var Sexo:String="";
		private var Mensaje1:String="";
		private var Mensaje2:String="";
		private var Mensaje3:String="";
		private var Mensaje4:String="";
		private var Resultado:String="";
		private var NombreArray:Array=new Array;
		private var SexoArray:Array=new Array;
		private var EdadArray:Array=new Array;
		private var SueldoArray:Array=new Array;
		private var ContArray:Number;
		private var SueldoBase:Number=0;
		private var NoMu:Number=0;
		private var NoHo:Number=0;
		private var NominaHom:Number=0;
		private var NominaMuj:Number=0;
		private var TerceraH:Number=0;
		private var TerceraM:Number=0;
		private var Mayor18:Number=0;
		private var Mayor30:Number=0;
		private var OtrosH:Number=0;
		private var OtrosM:Number=0;
		private var Num:Number=0;
		private var Aumento:Number=0;
		private var Sum:Number=0;
		private var NominaTotal:Number;
		var TotalEmp:Number=1;
		public function FNombre(no:String) {

				Nombre=no;

		}
		public function FEdad(ed:Number) {

				Edad=ed;

		}
		public function FSexo(se:String) {
			
				Sexo=se;

		}
		public function FSueldoBase(su:Number) {

				SueldoBase=su;
		}
		public function Guardar():void {
			//En todos estos if se hace la comprobacion de que cumpla que sea lo que tiene que hacer paso a paso
			if (Number(Nombre)||Nombre=="")
			{
				Mensaje1="Solo Letras";
				trace (Mensaje1);
			}
			else
			{
			if (isNaN(Edad)||Edad==0)
			{
						
				Mensaje1=" ";
				Mensaje2="Solo Numero";
			}
			else
			{
				if (Number(Sexo)||Sexo!="Masculino"&&Sexo!="Femenino")
				{

					Mensaje1="";
					Mensaje2="";
					Mensaje3="Femenino o Masculino";
				}
				else
				{
					if (isNaN(SueldoBase)||SueldoBase==0)
					{
						Mensaje1="";
						Mensaje2="";
						Mensaje3="";
						Mensaje4="Solo Numeros";
						
					}
					else
					{
			//Para cuando llega aqui ya se comprobo todo y esta listo para operar con todo
			Mensaje1="";
			Mensaje2="";
			Mensaje3="";
			Mensaje4="";
			NombreArray.push(Nombre);
			EdadArray.push(Edad);
			SexoArray.push(Sexo);
			//Tenemos otro filto en el cual checa si es hombre o mujer:D
			//Donde tambien tenemos contadores de varios tipos los cuales
			//Hacen que cuente si entra en 18-25Años de 30-35Años
			//Si tiene mas de 65 en cada uno y el de otros si no cumple con los demas.
			if (SexoArray[Num]=="Masculino")
			{
			if (EdadArray[Num]>=30&&EdadArray[Num]<=35)
			{
				Aumento=SueldoBase*0.05;
				Mayor30++;
			}
			else
			{
				if (EdadArray[Num]>=65)
					{
						Aumento=SueldoBase*0.20;
						TerceraH++;
					}
					else
					{
						OtrosH++;
					}
			}
			Sum=SueldoBase+Aumento;
			SueldoArray.push(Sum);
			NominaHom+=SueldoArray[Num];
			NoHo=NoHo+1;
			Num++;
			}
			if (SexoArray[Num]=="Femenino")
				{
				if (EdadArray[Num]>=18&&EdadArray[Num]<=25)
				{
					Aumento=SueldoBase*0.15;
					Mayor18++;
					trace (Aumento);
				}
				else
				{
					if (EdadArray[Num]>=65)
					{
						Aumento=SueldoBase*0.20;
						TerceraH++;
					}
					else
					{
						OtrosM++;
					}
				}
				Sum=SueldoBase+Aumento;
				SueldoArray.push(Sum);
				trace (Sum);
				trace (SueldoArray[Num]);
				NominaMuj+=SueldoArray[Num];
				trace (NominaMuj);
				NoMu++;
				Num++;
				}
				NominaTotal=NominaMuj+NominaHom;
			}
					}
				}
			}
			
			}
			public function Suma():void
			{
				TotalEmp++;
			}
			//Funcion para mandar a imprimir las personas
			public function Imprimir ():void
			{
			//Lo utilizamos para imprimir todos los Resultado que necesitemos
			var Num2:int=0;
			while (Num2<Num)
			{
				Resultado+="Nombre:"+NombreArray[Num2]+" Edad:"+EdadArray[Num2]+" Sexo:"+SexoArray[Num2]+" Sueldo:"+SueldoArray[Num2]+"\n";
				Num2++;
			}
			
			//Funciones para retornar valores a los frame
			}
			public function Mensajes1():String
				{
					return Mensaje1.toString();
				}
			public function Mensajes2():String
				{
					return Mensaje2.toString();
				}
			public function Mensajes3():String
				{
					return Mensaje3.toString();
				}
			public function Mensajes4():String
				{
					return Mensaje4.toString();
				}
			public function NoEmp():String
				{
					return TotalEmp.toString();
				}
			public function ENombre():String
				{
					return Nombre.toString();
				}
			public function EEdad():String
				{
					return Edad.toString();
				}
			public function ESexo():String
				{
					return Sexo.toString();
				}
			public function ESueldoBase():String
				{
					return SueldoBase.toString();
				}
			public function TNominaM():String
				{
					return NominaMuj.toString();
				}
			public function TNominaH():String
				{
					return NominaHom.toString();
				}
			public function TTerceraM():String
				{
					return TerceraM.toString();
				}
			public function TTerceraH():String
				{
					return TerceraH.toString();
				}
			public function TNMujeres():String
				{
					return NoMu.toString();
				}
			public function TNHombres():String
				{
					return NoHo.toString();
				}
			public function TMayor18():String
				{
					return Mayor18.toString();
				}
			public function TMayor30():String
				{
					return Mayor30.toString();
				}			
			public function TOtrosM():String
				{
					return OtrosM.toString();
				}			
			public function TOtrosH():String
				{
					return OtrosH.toString();
				}
			public function Nominas():String
				{
					return Resultado.toString();
				}
			public function EAumento():String
				{
					return Aumento.toString();
				}
				

	}

}