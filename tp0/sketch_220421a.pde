void setup() {
  size(400, 400);
  background(255, 0, 0);
}
void draw() {
  //Contorno de cara
  fill(255, 148, 139);
  ellipse(200, 200, 150, 250);
  //NARIZ
  line(180, 160, 200, 130);
  line(180, 160, 180, 130);

  //arito
  
  fill(0);
  ellipse(265, 160, 6, 6);
  //mejillas
  line(180, 300, 150, 180);
  line(220, 300, 250, 180);

  //bOCA
  fill(247, 167, 205 );
  strokeWeight(4);
  stroke(234, 52, 37);
  rect(170, 200, 60, 10);
  
  stroke(0);
  strokeWeight(1);
  //ojo izquierdo
  
  fill(255);
  ellipse(180, 100, 40, 40); // círculo blanco
  fill(0);
  ellipse(180+10, 100, 20, 20); // círculo negro
  fill(255);
  ellipse(180+16, 95, 4, 4); // pequeño, círculo blanco

  //ojo derecho
  
  ellipse(220, 100, 40, 40); // círculo blanco
  fill(0);
  ellipse(220+10, 100, 20, 20); // círculo negro
  fill(255);
  ellipse(220+16, 95, 4, 4); // pequeño, círculo blanco

text("Manuel Garmendia",mouseX,mouseY);
}
