void cuadradodegrade(int x, int y) {
  stroke(0);
  fill(255);
  square(x, y, 40);
  if (espar(contador)) {
    for (int i = 0; i < 40; i++) {
      stroke(max(0, rojo - i * 6), max(0, verde - i * 6), max(0, azul - i * 6));
      line(x + i, y, x + i, y + 39);
    }
  } else {
    for (int i = 0; i < 40; i++) {
      stroke(max(0, rojo - i * 6), max(0, verde - i * 6), max(0, azul - i * 6));
      line(x + 39 - i, y, x + 39 - i, y + 39);
    }
  }
}

boolean espar(int n){
  return n % 2 == 0;
}

void colores(){
  
    if (rojo == 255){
    rojo = int(random(0,255));
    verde = 255;
  }else if (verde == 255){
    verde = int(random(0,255));
    azul = 255;
  }else if (azul == 255){
    azul = int(random(0,255));
    rojo = 255;
  }
}

void filas(){
  posy = 0;
  contador = 0;
  for(int k = 0; k < 10; k++){
    for (int j = 0; j<10; j++){
      cuadradodegrade(posx + j*40, posy);
    }
    contador = contador + 1;
    posy = posy + 40;
  }
}

void reiniciar(){
    fill(0);
    circle(30, 370, 60);
    fill(255);
    textSize(20);
    text("Reset", 7, 375);
    float d1 = dist(mouseX, mouseY, 30, 370);
    int r1 = 60/2;
    if (d1 < r1) {
        rojo = 255;
        verde = 0;
        azul = 0;
        posx = 400;
        posy = 0;
    }
}
