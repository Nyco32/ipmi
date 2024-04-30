PImage imagenoriginal;

void setup(){
  size(800, 400);
  imagenoriginal = loadImage("imagenoriginal.jpg");

}

void draw(){
  background(255);
  image(imagenoriginal, 0, 0, 300, 400);

 //cabeza
  fill(#F0CA9B);
  ellipse(550, 130, 80, 120);
noFill();
//ojos
  line(520, 108, 540, 105);
  fill(255);
  ellipse(530, 115, 20, 10);
  fill(0);
  ellipse(530, 115, 10, 10);

  line(555, 105, 575, 108);
  fill(255);
  ellipse(565,115, 20, 10);
  fill(0);
  ellipse(565,115, 10, 10);
noFill();
//oreja
fill(#F0CA9B);
 beginShape();
  vertex(590, 130);
  vertex(595, 130);
  vertex(600, 110);
  vertex(595, 100);
  vertex(590, 100);
  vertex(585, 105);
endShape(CLOSE);
noFill();
//pelo
fill(#764100);
beginShape();
  vertex(595, 100);
  vertex(593, 95);
  vertex(591, 90);
  vertex(589, 85);
  vertex(587, 80);
  vertex(583, 75);
  vertex(578, 70);
  vertex(572, 65);
  vertex(567, 62);
  vertex(562, 59);
  vertex(557, 56);
  vertex(552, 54);
  vertex(548, 53);
  vertex(543, 54);
  vertex(538, 56);
  vertex(532, 59);
  vertex(537, 62);
  vertex(532, 65);
  vertex(527, 70);
  vertex(522, 75);
  vertex(517, 80);
  vertex(512, 85);
  vertex(507, 90);
  vertex(507, 95);
  vertex(507, 100);
  vertex(530, 95);
  vertex(535, 90);
  vertex(545, 100);
endShape(CLOSE);
noFill();
//boca
fill(255,170,170);
ellipse(545, 155, 40, 11);
line(526, 155, 565, 155);
noFill();
//nariz
triangle(547, 122, 545, 140, 535, 140);
noFill();
//torso
fill(0,100,0);
triangle(480, 190, 550, 1000, 620, 190);
rect(450, 190, 40, 250);
rect(610, 190, 40, 250);
fill(#F0CA9B);
rect(450, 290, 40, 250);
rect(610, 290, 40, 250);
noFill();



//mouse
ellipse(mouseX, mouseY, 20, 20);

fill(0); // Color del texto: negro
text("X: " + mouseX + ", Y: " + mouseY, 10, 20);
}
