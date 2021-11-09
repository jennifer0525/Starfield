
Particle [] p = new Particle [100];
// ParticleTwo [] p2 = new ParticleTwo [70];

void setup()
{
  size(500, 500);
  for (int i = 0; i < 10; i++) {
    p[i] = new OddballParticle();
  }

  for (int i = 10; i < p.length; i++) {
    // i starts at 10 because the oddball ends at 10
    p[i] = new Particle();
  }
  
  // For ParticleTwo
 /*
  for (int i = 0; i < p2.length; i++){
    p2[i] = new ParticleTwo();
  }
  */
}

void draw()
{
  background(0); 
  for (int i = 0; i < p.length; i++) {
    p[i].move();
    p[i].show();
  }
  // FOR PARTICLE 2
  /*
  for (int i = 0; i < p2.length; i++){
    p2[i].move();
    p2[i].show();
  } 
  // rect(100,100,100,100); WRITE CODE FOR OBJECTS NOT MOVING INSIDE DRAW
  */
}


/*
void mousePressed(){ // can use keyPressed instead of mousePressend
 redraw();
 }
 */

class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor, mySize;
  Particle () { // constructor
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = 250;
    myY = 250;
    myAngle = Math.random()*(2 * Math.PI);
    mySpeed = Math.random()*10;
    // mySpeed = 1;  // —> turns all the particles moving into a circle shape
    mySize = 10;
  }
  void show () {
    noStroke();
    fill (myColor);
    ellipse ((float)myX, (float)myY, (float)mySize, (float)mySize);
    // can you cast any type into another type? (except from boolean)
  }
  void move () {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;

    // if-statement if to make the dots bounce back
    if (myX >= 500) {
      myX = -150;
      myColor = 250;
    }
    if (myY >= 500) {
      myY = -150;
      myColor = 250;
    }
    // end if-statement
  }
}



class OddballParticle extends Particle {
  OddballParticle () { 
    myColor = (int)(Math.random()*50+201);
    myX = 250;
    myY = 250;
    myAngle = Math.random()*(2 * Math.PI);
    mySpeed = Math.random()*3;
    mySize = 25;
  }
}

// PARTICLE TWO CLASS
/*
class ParticleTwo { // add an image to this particle
 
  double myAngle, mySpeed;
  int myColor, mySize, myX, myY;
  particleTwo () { 
    myColor = color(250, 187, 15);
    myX = 250;
    myY = 250;
    myAngle = Math.random()*(2 * Math.PI);
    mySpeed = Math.random()*10;;  
    mySize = 10;
  }
  
  void show (){ // change show to a star shape
    noStroke();
    fill (myColor);
    rect ((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
  
  void move (){
    myX = myX + 5;
    myY = myY + 5;
   // myX = myX + Math.cos((int)myAngle) * (int)mySpeed;
   // myY = myY + Math.sin((int)myAngle) * (int)mySpeed;
  }
}

*/
