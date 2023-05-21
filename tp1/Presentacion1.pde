
int currentSlide = 0; 
int numSlides = 3; 

PImage[] imagen; 
String[] texts; 

boolean iniciodepresentacion = false; 
boolean finaldepresentacion = false; 

float textX;
float textSpeed;

void setup() {
  size(640, 480);
  
 
  imagen = new PImage[numSlides];
  imagen[0] = loadImage("imagen1.jpg");
  imagen[1] = loadImage("imagen2.jpg");
  imagen[2] = loadImage("imagen3.jpg");
  
  texts = new String[numSlides];
  texts[0] = "Este es mi gato Loki";
  texts[1] = "Loki es muy lindo";
  texts[2] = "Lo quiero mucho a Loki";
  
 
  textX = width; 
  textSpeed = -1; 
}

void draw() {
  background(254, 1, 154);
  
  if (iniciodepresentacion && !finaldepresentacion) {
    
    image(imagen[currentSlide], 0, 0, width, height);
    
    
    textSize(52);
    textAlign(CENTER, CENTER);
    textFont(createFont("Arial", 30)); // 
    fill(255, 99, 233);
    text(texts[currentSlide], textX, height/2);
    
    
    textX += textSpeed;
    
    
    if (textX <= width/2) {
      currentSlide = (currentSlide + 1) % numSlides; 
      
      
      textX = width; 
      
      
      if (currentSlide == 0) {
        finaldepresentacion = true; 
      }
    }
  } else {
    if (finaldepresentacion) {
      
      textAlign(CENTER, CENTER);
      textSize(32);
      fill(0);
      text("Gracias por ver", width/2, height/2);
      
      
      fill(182, 149, 192);
      rect(width/2 - 50, height - 60, 100, 40);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(20);
      text("Reiniciar", width/2, height - 40);
    } else {
      
      textAlign(CENTER, CENTER);
      textSize(32);
      fill(0);
      text("Haga clic para iniciar", width/2, height/2);
    }
  }
}

void mousePressed() {
  if (!iniciodepresentacion) {
    iniciodepresentacion = true;
  } else if (finaldepresentacion && mouseY > height - 60 && mouseY < height - 20) {
    
    currentSlide = 0;
    iniciodepresentacion = false;
    finaldepresentacion = false;
  }
}
