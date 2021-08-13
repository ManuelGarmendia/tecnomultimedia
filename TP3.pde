 // https://youtu.be/fCZCshSmKJA
 
 void setup() {
  size(500, 500); 
  rectMode(CENTER);  
}

void draw() {

  //cuadrados
   for (int i=500; i>=10; i-=8) { 
    float c = map(i, 10, 500, 0, 255);  
    fill(c);
    rect(250, 250, i, i);  
  } 

  //lineas
   for (int x=0; x<=500; x+=50) {  
   for (int y=0; y<=500; y+=50) {
     
      line(x+mouseX, y+mouseY, 250, 250);  
   
  if ( key == ' ');{
  if (keyPressed)
  stroke(random(0,255), random(0,255), random(0,255));
  
  //reinicio 
   if (mousePressed)
   for (int i=500; i>=10; i-=8) {  
   float c = map(i, 10, 250, 250,250);  
   fill(c);
   rect(250, 250, i, i); 
   stroke( 0);  
      
    }
} 
  
       

}


}
}
