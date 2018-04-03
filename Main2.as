package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.events.Event;
import flash.display.Loader;
import flash.text.TextField;
import flash.display.Sprite;
import flash.events.MouseEvent;
import fl.transitions.Tween;//Liberias para los efectos de movimientos
import fl.transitions.easing.*;
import fl.transitions.TweenEvent;
import flash.events.MouseEvent;//
import flash.net.*;
	public class Main2 extends MovieClip{
		
		public function Main2() {
		
		}
	public function fbp1(event:MouseEvent){
		var url1:URLRequest= new URLRequest("Practica1.0.html");
		navigateToURL(url1, "safe");
	}
	public function fbp2(event:MouseEvent){
		var url:URLRequest= new URLRequest("Practica2HM.html");
		navigateToURL(url, "safe");
		
	}
	public function fbp3(event:MouseEvent){
		var url2:URLRequest= new URLRequest("practica3.html");
		navigateToURL(url2, "safe");
	}
	public function fpra5(event:MouseEvent){
		var url3:URLRequest= new URLRequest("Practica5.5HM.html");
		navigateToURL(url3, "safe");
	}
	public function fpra6(event:MouseEvent){
		var url4:URLRequest= new URLRequest("Practica5HM.html");
		navigateToURL(url4, "safe");
	}
	public function fpra7(event:MouseEvent){
		var url5:URLRequest= new URLRequest("practica6.html");
		navigateToURL(url5, "safe");
	}
	public function fpra8(event:MouseEvent){
		var url6:URLRequest= new URLRequest("Galeria.html");
		navigateToURL(url6, "safe");
	}
	public function fpra9(event:MouseEvent){
		var url7:URLRequest= new URLRequest("Practica8.html");
		navigateToURL(url7, "safe");
	}
	public function fbol(event:MouseEvent){
		var url8:URLRequest= new URLRequest("Practica4HM.html");
		navigateToURL(url8, "safe");
	}
	public function fpra11(event:MouseEvent){
		var url9:URLRequest= new URLRequest("Videos.html");
		navigateToURL(url9, "safe");
	}
	public function fpuz(event:MouseEvent){
		var url10:URLRequest= new URLRequest("Proyecto_1 v3.html");
		navigateToURL(url10, "safe");
	}
	public function fgra(event:MouseEvent){
		var url11:URLRequest= new URLRequest("juego2.html");
		navigateToURL(url11, "safe");
	}
	public function fes(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("Video español.mp4");
			v.y=200;
			v.x=-100;
			addChild(v);
}
	public function fing(event:MouseEvent){
	var v: nose= new nose();
			v.playMyFlv("video ingles.mp4");
			addChild(v);
			v.y=200;
			v.x=-100;
}
	public function gale(e:Event){
	 datosXML= new XML(e.target.data);
	numeroElementos=datosXML.locacion.length();
	ponimg();
	}
	public function ponimg(){
		var posY:uint=0;
	var posX:uint=0;
	
	for (var i:uint=0;i<numeroElementos; i++){
		var ind:Number =(i)%5;
		if (i>0 && ind==0){
			posY++;
			posX++;
		}
		var imagen:Loader= new Loader();
		imagen.load(new URLRequest(datosXML.locacion[i].imagen));
		imagen.y=posY*200;
		imagen.x=posX*10;
		galeria.addChild(imagen);
		if(i==0){
			var img1:Tween=new Tween(imagen,"x",None.easeOut,0,25,1,true);
			
		}
		if(i==1){
			
			var img2:Tween=new Tween(imagen,"x",None.easeOut,1200,275,1,true);
		}
		if(i==2){
		
			var img3:Tween=new Tween(imagen,"x",None.easeOut,0,500,1,true);
		}
		if(i==3){
			
			var img4:Tween=new Tween(imagen,"x",None.easeOut,1200,750,1,true);
		}
		if(i==4){
			
			var img5:Tween=new Tween(imagen,"x",None.easeOut,0,1000,1,true);
		}
		if(i==5){
			
			var img6:Tween=new Tween(imagen,"x",None.easeOut,1200,25,1,true);
		}
		if(i==6){
			 
			var img7:Tween=new Tween(imagen,"x",None.easeOut,0,275,1,true);
		}
		if(i==7){
			
			var img8:Tween=new Tween(imagen,"x",None.easeOut,1200,500,1,true);
		}
		if(i==8){
			
			var img9:Tween=new Tween(imagen,"x",None.easeOut,0,750,1,true);
		}
		if(i==9){
			var img10:Tween=new Tween(imagen,"x",None.easeOut,1200,1000,1,true);
		}
		
		if(i==10){
			var img11:Tween=new Tween(imagen,"x",None.easeOut,0,25,1,true);
		}
		if(i==11){
			var img12:Tween=new Tween(imagen,"x",None.easeOut,1200,275,1,true);
		}
		if(i==12){
			var img13:Tween=new Tween(imagen,"x",None.easeOut,0,500,1,true);
		}
		if(i==13){
			var img14:Tween=new Tween(imagen,"x",None.easeOut,1200,750,1,true);
		}
		if(i==14){
			var img15:Tween=new Tween(imagen,"x",None.easeOut,0,1000,1,true);
		}
		if(i==15){
			var img16:Tween=new Tween(imagen,"x",None.easeOut,1200,25,1,true);
		}
		if(i==16){
			var img17:Tween=new Tween(imagen,"x",None.easeOut,0,275,1,true);
		}
		if(i==17){
			var img18:Tween=new Tween(imagen,"x",None.easeOut,1200,500,1,true);
		}
		if(i==18){
			var img19:Tween=new Tween(imagen,"x",None.easeOut,0,750,1,true);
		}
		if(i==19){
			var img20:Tween=new Tween(imagen,"x",None.easeOut,1200,1000,1,true);
		}
		posX++
	}
	}
	}
	


	
}
