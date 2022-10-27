//Global Variables
int appWidth, appHeight,
squareXpos, squareYpos, 
bulletXpos,
zombieXpos_1, zombieYpos_1,
zombieXpos_2, zombieYpos_2,
zombieXpos_3, zombieYpos_3,
zombieXpos_4, zombieYpos_4,
zombieXpos_5, zombieYpos_5,
zombieXpos_6, zombieYpos_6,
zombieXpos_7, zombieYpos_7,
zombieXpos_8, zombieYpos_8;


float BulletRotation;
boolean bullet = false, test = false;
void setup() {
  
  //Declaring Display Geometry: landscape, square, portrait
  size( 700, 500); //Able to deploy with fullScreen();
  appWidth = width;
  appHeight = height;
  
  //Concatenation: , or + (i.e space)aaa
  println("Display Monitor:", "\t Width:"+displayWidth, "\t Height:"+displayHeight);
  
  
  String ls ="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  if ( appWidth < appHeight) {//Declaring Ladscape and Square
  println(instruct);
} else {
  println("Display: Good to go");
  if ( appWidth > displayWidth ) {//Fitting CANVAS into monitor Display
    appWidth=0;
    appHeight=0;
    println("Display: Stop, Program is broken");
  } else {
    //Empty Else
  }
}

  squareYpos = height/2 - (height/100) * (width/100);
  squareXpos = width/2 - (height/100) * (width/100);
  
  
} //End setup


void draw() {
  
  background(100,80,25);
  
  //Player
  fill (255);
  square( squareXpos, squareYpos, (height/100) * (width/100) );
  if (squareYpos > height - (height/100) * (width/100) || squareYpos < 0 || squareXpos > width - (height/100) * (width/100) || squareXpos < 0) {
  exit();
  println ("You Ran Off The Map! Game Over");
  }//if end statement
  
  
  //Target
  fill (200,10,10);
  ellipse(mouseX,mouseY,10,10);
  noFill ();
  
  
  BulletRotation = atan2( mouseY - squareYpos - ((height/100) * (width/100))/2, mouseX - squareXpos - ((height/100) * (width/100))/2) * ( 180 / 3.14 );
 
 
  //Zombie
  fill (5,160,5);
  ellipse(zombieXpos_1,zombieYpos_1, (height/100) * (width/100), (height/100) * (width/100));
 
 
 //Bullet
 if ( bullet ) {
  translate(squareXpos + ((height/100) * (width/100))/2,squareYpos + ((height/100) * (width/100))/2);
  rotate (radians(BulletRotation));
  fill (255,255,0);
  rect(bulletXpos + ((height/100) * (width/100))/2, 0, 10000, 0);
  bullet = false;
  noFill ();
  }//if end statement
} //End draw

void keyTyped() {
  if (key == 119) {squareYpos -= 10;}
  if (key == 115) {squareYpos += 10;}
  if (key == 100) {squareXpos += 10;}
  if (key == 97) {squareXpos -= 10;}
println("typed " + int(key) + " " + keyCode);
}

void keyPressed() {} //End KeyPressed


void mousePressed() {
  println ("Suqare Corner Position", "\t" +squareXpos, "\t" +squareYpos, "\t" +BulletRotation);
  bullet = true;
  
  
} //End mousePressed

void mouseReleased () {} 

// End Main Program
