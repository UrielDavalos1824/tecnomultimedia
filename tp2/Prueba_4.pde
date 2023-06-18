PImage referenceImage;
int tileSize = 20;
int maxOffset = 10;
int numTilesX, numTilesY;
int resetTileSize, resetMaxOffset;

void setup() {
  size(800, 400);
  referenceImage = loadImage("referencia.jpeg");
  referenceImage.resize(width/2, height);
  numTilesX = width / tileSize;
  numTilesY = height / tileSize;
  resetTileSize = tileSize; 
  resetMaxOffset = maxOffset; 
}

void draw() {
  background(0);
  
  
  image(referenceImage, 0, 0);
  
  
  for (int y = 0; y < numTilesY; y++) {
    for (int x = numTilesX / 2; x < numTilesX; x++) {
      int xOffset = int(map(mouseX, 0, width, -maxOffset, maxOffset));
      int yOffset = int(map(mouseY, 0, height, -maxOffset, maxOffset));
      drawTile(x * tileSize + xOffset, y * tileSize + yOffset, tileSize);
    }
  }
}

void drawTile(int x, int y, int size) {
  
  int index = int(map(dist(x, y, width / 2, height / 2), 0, width / 2, 0, referenceImage.width));
  color c = getColor(index, y);
  fill(c);
  rect(x, y, size, size);
}

color getColor(int x, int y) {
 
  return referenceImage.get(x, y);
}

void keyPressed() {
  
  if (key == 'R' || key == 'r') {
    resetVariables();
    redraw(); 
  }
}

void resetVariables() {
  
  tileSize = resetTileSize;
  maxOffset = resetMaxOffset;
}

void mouseDragged() {
  
  tileSize = int(map(mouseX, 0, width, 10, 50));
  maxOffset = int(map(mouseY, 0, height, 0, 20));
}
