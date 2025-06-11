

///https://youtu.be/YDvHuDIt85M

PImage referencia;

int cols = 41;
int rows = 20;
float espacioY;

float factor = 1.5;
int modoColor = 0; 

void setup() {
size(800, 400);
referencia = loadImage("Movimiento cubico.png");
referencia.resize(400, 400);
espacioY = height / float(rows);
noStroke();
}

void draw() {
background(255);
image(referencia, 0, 0);

clip(400, 0, 400, 400);
dibujarLadoDerecho(factor);
noClip();
}

void dibujarLadoDerecho(float f) {
  float centro = 600;

for (int i=0; i<cols-1; i++) {
 for (int j=0; j<rows; j++) {

if (modoColor == 0) {
if ((i+j)%2 == 0) fill(0);
 else fill(255);
 } else if (modoColor == 1) {
 if ((i+j)%2 == 0) fill(0, 0, 255);
 else fill(255, 0, 0);
 } else if (modoColor == 2) {
 if ((i+j)%2 == 0) fill(255, 192, 203);
 else fill(255);
      }

float x0 = map(i, 0, cols-1, 400, 800);
 float x1 = map(i+1, 0, cols-1, 400, 800);
 float y0 = j * espacioY;
 float y1 = (j+1) * espacioY;
 float d = dist(mouseX, mouseY, x0, y0);
 float ajuste = map(d, 0, 400, 0.1, 0.6);
 float dx0 = deformarX(x0, centro, f + ajuste);
 float dx1 = deformarX(x1, centro, f + ajuste);

quad(dx0, y0, dx1, y0, dx1, y1, dx0, y1);
    }
  }
}

float deformarX(float x, float centro, float f) {
float distDesdeCentro = x - centro;
float normalizado = distDesdeCentro / (width/2);
float deformado = sqrt(abs(normalizado)) * f;
 if (distDesdeCentro < 0) deformado *= -1;
  return centro + deformado * (width/2);
}

void mousePressed() {
if (mouseX > 400) {
 modoColor++;
 if (modoColor > 2) modoColor = 0;
  }
}

void mouseMoved() {
 factor = map(mouseX, 400, width, 0.5, 2.5);
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
factor = 1.5;
modoColor = 0;
  }
}
