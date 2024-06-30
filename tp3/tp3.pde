//comision 3
//Nicolas Sutti, 21387/3
//tp3
//https://youtu.be/LpwSraPkQyM


int rojo, verde, azul, posx, posy, contador;
PImage obra;

void setup(){
  size(800, 400);
  obra = loadImage("F_1.jpg");
  rojo = 255;
  verde = 0;
  azul = 0;
  posx = 400;
  posy = 0;
  
}


void draw(){
  background(255);
  image(obra, 0,-39, 400, 620);
  filas();
  reiniciar();
}


void mousePressed(){
  colores();
}
