//Global Variables
int appWidth, appHeight, squareXpos = 100/2, squareYpos = 100/2;
void setup() {
  
  //Declaring Display Geometry: landscape, square, portrait
  size(700 , 400); //Able to deploy with fullScreen();
  appWidth = width;
  appHeight = height;
  
  
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


} //End setup


void draw() {
  square( squareXpos, squareYpos, 100);
} //End draw

void keyTyped() {
  if (key == 119) {squareYpos -= 10;}
  if (key == 115) {squareYpos += 10;}
  if (key == 100) {squareXpos += 10;}
  if (key == 97) {squareXpos -= 10;}
println("typed " + int(key) + " " + keyCode); 
}

void keyPressed() {} //End KeyPressed


void mousePressed() {} //End mousePressed


// End Main Program
