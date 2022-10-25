//Global Variables
int appWidth, appHeight, squareXpos = 700/2 - 50, squareYpos = 400/2 - 50;
float centerX, centerY, xStart, yStart, widthRect, heightRect, center;
void setup() {
  
  //Declaring Display Geometry: landscape, square, portrait
  size(700 , 400); //Able to deploy with fullScreen();
  appWidth = width;
  appHeight = height;
  background (0);
  
  //Concatenation: , or + (i.e space)
  println("\t\t\t Width="+width,"\t Height="+height);
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

  //Population
  centerX = width * 1/2;
  centerY = height * 1/2;
  xStart = center - (width * 1/4);
  yStart = center - (height * 1/4);
  widthRect = width * 1/2;
  heightRect = height * 1/2;
  
} //End setup


void draw() {
  background (0);
  square(squareXpos, squareYpos, 100);
  if (squareYpos > height || squareYpos < -1 || squareXpos > width || squareXpos < -1) {
  exit();
  println ("You Ran Off The Map! Game Over");
}
} //End draw

void keyTyped() {
  if (key == 119) {squareYpos -= 50;}
  if (key == 115) {squareYpos += 50;}
  if (key == 100) {squareXpos += 50;}
  if (key == 97) {squareXpos -= 50;}
println("typed " + int(key) + " " + keyCode);
}

void keyPressed() {} //End KeyPressed


void mousePressed() {
  println ("Suqare Corner Position", "\t" +squareXpos, "\t" +squareYpos);
} //End mousePressed

// End Main Program
