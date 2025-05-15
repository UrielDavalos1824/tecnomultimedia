int cronometro;
int numeroPantalla;
PImage misfotos;
PImage misfotos2;
PImage misfotos3;
PFont Fuente;

void setup() {
size(640, 480);
  numeroPantalla = 0;
  cronometro = 0;
  frameRate(15);
 Fuente = loadFont("ComicSans.vlw"); 
  textFont(Fuente);

 misfotos = loadImage("artelectronico1.jpg");
 misfotos2 = loadImage("artelectronico2.jpg");
 misfotos3 = loadImage("artelectronico3.jpg");
}

void draw() {
  background(255);
  cronometro++;
 if (cronometro < 150) {
    numeroPantalla = 0;
  } else if (cronometro < 300) {
    numeroPantalla = 1;
  } else {
    numeroPantalla = 2;
  }
 if (numeroPantalla == 0) {
    image(misfotos, 0, 0, width, height);
  fill(255);
  textAlign(CENTER, CENTER);
    textSize(30);
  float x = map(cronometro, 0, 150, 0, width);
    text("El arte de Michał Klimczak", x, height / 2);

  } else if (numeroPantalla == 1) {
 image(misfotos2, 0, 0, width, height);
 fill(255, 0, 0);
 textAlign(CENTER, CENTER);
 textSize(30);
  float x = map(cronometro, 150, 300, width, 0);
    text("Michał Klimczak es un artista digital caracterizado por la ciencia ficción", x, height / 2);

  } else if (numeroPantalla == 2) {
    image(misfotos3, 0, 0, width, height);
    fill(0, 157, 0);
    textAlign(CENTER, CENTER);
    textSize(30);
 float x = map(cronometro, 300, 500, width, 0);
    text("Gracias por ver", x, height / 2);

float bx = width - 60;
 float by = height - 60;
  float br = 50;
fill(200);
  ellipse(bx, by, br, br);

 fill(0);
 textAlign(CENTER, CENTER);
    textSize(12);
    text("Reiniciar", bx, by);
  }
}

void mousePressed() {
  if (numeroPantalla == 2) {
float bx = width - 60;
float by = height - 60;
    float br = 50;
    if (dist(mouseX, mouseY, bx, by) < br / 2) {
      cronometro = 0;
      numeroPantalla = 0;
    }
  }
}
