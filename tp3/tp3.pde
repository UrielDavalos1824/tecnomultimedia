// Variables globales
String pantallaActual = "pantalla1";
PImage[] fondos;
int numPantallas = 10;
int tiempoCambioPantalla = 0;
int tiempoEspera = 3000; // Tiempo de espera en milisegundos (3 segundos)
boolean mouseSobreBoton = false;

void setup() {
  size(600, 600);
  fondos = new PImage[numPantallas];
  cargarFondos();
}

void draw() {
  background(255);

  switch (pantallaActual) {
    case "pantalla1":
      pantalla1();
      break;
    case "pantalla2":
      pantalla2();
      break;
    case "pantalla3":
      pantalla3();
      break;
    case "pantalla4":
      pantalla4();
      break;
    case "pantalla5":
      pantalla5();
      break;
    case "pantalla5b":
      pantalla5b();
      break;
    case "pantalla6":
      pantalla6();
      break;
    case "pantalla7":
      pantalla7();
      break;
    case "pantalla8":
      pantalla8();
      break;
    case "pantalla8b":
      pantalla8b();
      break;
    case "pantalla9":
      pantalla9();
      break;
  }
}

void pantalla1() {
  background(fondos[0]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("El patito feo de Hans Christian Andersen\npor Uriel Davalos", width/2, height/2);

  // Botón Iniciar
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Iniciar", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla2";
  }
}

void pantalla2() {
  background(fondos[1]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Un huevo extraño ha nacido en un nido de patos\ny de él ha salido un patito feo", width/2, height/2);

  // Botón Crecer
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Crecer", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla3";
  }
}

void pantalla3() {
  background(fondos[2]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("El patito feo empieza a notar\nque no es igual a sus hermanos", width/2, height/2);

  // Botón Crecer
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Crecer", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla4";
  }
}

void pantalla4() {
  background(fondos[3]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("¿Los patos rechazan al patito feo?", width/2, height/2);

  // Botón Sí
  if (mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(200, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Sí", 250, 520);

  // Botón No
  if (mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(300, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("No", 350, 520);

  if (mousePressed && mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  } else if (mousePressed && mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    if (mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla5";
    } else if (mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla5b";
    }
  }
}

void pantalla5() {
  background(fondos[4]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("El patito feo comienza a vagar por el bosque", width/2, height/2);

  // Botón Continuar
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Continuar", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla6";
  }
}

void pantalla5b() {
  background(fondos[5]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Final Comprensión: El patito feo crece entre\nsu familia adoptiva de patos", width/2, height/2);

  // Botón Volver a jugar
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Volver a jugar", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla1";
  }
}

void pantalla6() {
  background(fondos[6]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("El patito feo se encuentra con tres caminos", width/2, height/2);

  // Botón Tomar el camino de la izquierda
  if (mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(50, 500, 150, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Tomar el camino de la izquierda", 125, 520);

  // Botón Tomar el camino del centro
  if (mouseX > 225 && mouseX < 375 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(225, 500, 150, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Tomar el camino del centro", 300, 520);

  // Botón Tomar el camino de la derecha
  if (mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(400, 500, 150, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Tomar el camino de la derecha", 475, 520);

  if (mousePressed && mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  } else if (mousePressed && mouseX > 225 && mouseX < 375 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  } else if (mousePressed && mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    if (mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla7";
    } else if (mouseX > 225 && mouseX < 375 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla8";
    } else if (mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla9";
    }
  }
}

void pantalla7() {
  background(fondos[7]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Final Mascota: Luego de caminar un poco\nel patito feo se encuentra con una casa a las afueras del bosque,\nahí se encuentra con una familia humana que lo adoptan\ny le ponen el nombre Fifi", width/2, height/2);

  // Botón Volver a jugar
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Volver a jugar", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla1";
  }
}

void pantalla8() {
  background(fondos[8]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Final Clásico: El patito feo vaga por los bosques\npor un tiempo hasta encontrarse con un grupo de cisnes\nque lo reconocen como uno de los suyos", width/2, height/2);

  // Botón Ver créditos
  if (mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(200, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Ver créditos", 250, 520);

  // Botón Volver a jugar
  if (mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(300, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Volver a jugar", 350, 520);

  if (mousePressed && mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  } else if (mousePressed && mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    if (mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla8b";
    } else if (mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
      pantallaActual = "pantalla1";
    }
  }
}

void pantalla8b() {
  background(fondos[9]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Producción por Uriel Dávalos de la Cocción 2\ny cuento por Hans Christian Andersen", width/2, height/2);

  // Botón Volver a jugar
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Volver a jugar", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla1";
  }
}

void pantalla9() {
  background(fondos[9]);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Final Autodescubrimiento: Después de vagar solo\npor el bosque y no encontrar a nadie más,\nel patito feo decide embarcarse en un viaje\nalrededor del mundo para descubrir quién es él\ncomo individuo sin la atención de otros", width/2, height/2);

  // Botón Volver a jugar
  if (mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540) {
    if (!mouseSobreBoton) {
      fill(200);
    }
    mouseSobreBoton = true;
  } else {
    fill(150);
    mouseSobreBoton = false;
  }
  rect(250, 500, 100, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Volver a jugar", 300, 520);

  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 500 && mouseY < 540 && !mouseSobreBoton) {
    tiempoCambioPantalla = millis() + tiempoEspera;
  }
  
  if (millis() >= tiempoCambioPantalla) {
    pantallaActual = "pantalla1";
  }
}

void cargarFondos() {
  for (int i = 0; i < numPantallas; i++) {
    fondos[i] = loadImage("fondo" + (i+1) + ".jpg");
  }
}
