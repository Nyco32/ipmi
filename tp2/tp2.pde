//variables
PImage imagen1, imagen2, imagen3;
int estado;
int contador;
int r, g, b;
String txt1, txt2 , txt3, txt4, txt5, txt6, txt7, txt8, txt9;
String nombre1, nombre2, nombre3;
PFont AdventureTime, BritannicBold;
float posx, posy;
int listo, transparencia;

void setup(){
  size(640, 480);
  imagen1 = loadImage("imagen1.png");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.png");
  estado = 1;
  nombre1 = "Jon Foster";
  nombre2 = "Alvin Lee";
  nombre3 = "Drak Diaz";
  txt1 = "Este artista tiene tanta imaginación que la plasma en los dibujos que hace. Esos mundos y personajes solo existen en la mente del artista.";
  txt2 = "A estas personas son las que yo más admiro,";
  txt3 = "por dos cosas. La primera, por que pueden";
  txt4 = "diseñar lo que sea que imaginen.";
  txt5 = "Segundo por que tienen muchas imaginación ";
  txt6 = "y creatividad. Tanta que son capaces no sólo ";
  txt7 = "de crear personajes inexistentes, también ";
  txt8 = "crean los mundos donde estos personajes ";
  txt9 = "pueden vivir y hacer una vida.";
  AdventureTime = loadFont("AdventureTime.vlw");
  BritannicBold = loadFont ("BritannicBold.vlw");
  posx = 640;
  posy = 50;
  r = 255;
  g = 0;
  b = 0;
}
void draw(){
  if (estado == 1) {
  background(50) ;
  image(imagen1,120,0, 400,480 );
  textFont(AdventureTime);
  fill(255,0,0);
  text(nombre1, 180, 470);
  textFont(BritannicBold);
  fill(0,255,0);
  text(txt1, posx, posy);
    if (posx > -2000 ) {
      posx = posx - 1;
    }  else posx = 600;
  contador++;
         
    if (contador >= 2300) {
      estado++;
      contador = 0;
    }
  
  
  
  }  else if (estado == 2) {//animation color
    background(100) ;
    image(imagen2, 0, 0, width, 400);
    fill(r, g , b);
  if (r == 255 && g < 255 && b == 0) {
    g++;
  } else if (g == 255 && r > 0 && b == 0) {
    r--;
  } else if (g == 255 && b < 255 && r == 0) {
    b++;
  } else if (b == 255 && g > 0 && r == 0) {
    g--;
  } else if (b == 255 && r < 255 && g == 0) {
    r++;
  } else if (r == 255 && b > 0 && g == 0) {
    b--;
    listo = 1;
  }
    textFont(AdventureTime);
    text(nombre2, 20, 50);
    textFont(BritannicBold);
    text(txt2, 0, 420);
    text(txt3, 0, 447);
    text(txt4, 0, 475);
    contador++;
        
        if (contador >= 2300) {
          estado++;
          listo = 0;
          contador = 0;
        }
  } else if (estado == 3) {
      background(200);
      image(imagen3, 0, 100, width, 400);
      fill(250,250,0);
      textFont(AdventureTime);
      text(nombre3, 20, 170);
      fill(0);
      textFont(BritannicBold);
      if (listo == 0) {
        fill(0,0,0,transparencia);
        text(txt5, 0, 23);
        if (transparencia < 255){
          transparencia++;
        } else {
          transparencia = 0;
          listo++;
        }
    } else if (listo == 1){
        fill(0,0,0,transparencia);
        text(txt6, 0, 47);
        if (transparencia < 255){
          transparencia++;
        }  else {
           transparencia = 0;
           listo++;
          }
    } else if (listo == 2){
        fill(0,0,0,transparencia);
        text(txt7, 0, 71);
        if (transparencia < 255){
          transparencia++;
        } else {
            transparencia = 0;
            listo++;
        }
        
    } else if (listo == 3){
        fill(0,0,0,transparencia);
        text(txt8, 0, 95);
        if (transparencia < 255){
          transparencia++;
        } else {
            transparencia = 0;
            listo++;
        }
    } else if (listo == 4){
      fill(0,0,0,transparencia);
      text(txt9, 0, 119);
      if (transparencia < 255){
          transparencia++;
       } else {
            transparencia = 0;
            listo++;
       }
      }
    if (listo > 0){
      text(txt5, 0, 23);
    }
    if (listo > 1){
      text(txt6, 0, 47);
    }
    if (listo > 2){
      text(txt7, 0, 71);
    }
    if (listo > 3){
      text(txt8, 0, 95);
    }
    if(listo > 4){
      text(txt9, 0, 119);
    }
      //boton reinciciar
      if (listo == 5){
      circle(45, 430, 80);
      fill(255);
      text("Reset", 7, 440);
      }
      
  }
}
  

void mousePressed() {
float d1 = dist(mouseX, mouseY, 45, 430);
int r1 = 80/2;
if (d1 < r1) {
  setup();
}
  
//   estado++;
//  contador = 0;
//  if (estado > 3) {
//    estado = 1;
//    posx = 600;
//  }

}
