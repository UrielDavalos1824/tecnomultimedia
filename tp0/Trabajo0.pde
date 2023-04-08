PImage pececito;
void setup(){
 size( 800, 400 );

pececito = loadImage("pececito.jpg");}
  
 void draw(){ 
    background( 255 );
    
    image( pececito, 400, 0 );
   
  fill( 108, 59, 42 );
  
 rect( 0, 280, 399, 350);   
 fill( 255 );
 circle( 150, 199, 250);
 line(33, 150, 267, 150);
 noLoop();

noStroke(); 
 fill( 255, 191, 0 );

 ellipse( 120, 212, 83, 50);
 ellipse( 114, 187, 47, 30);
  ellipse( 70, 208, 57, 25);
ellipse( 140, 240, 27, 15);

ellipse( 70, 230, 57, 25);
  
  fill( 0 );
  ellipse( 148, 209, 10, 10);}
  
  
  
  
  
  
