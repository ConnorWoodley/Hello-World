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
  background (50,150,0);
  fill (145,100,65);
  square( squareXpos, squareYpos, 50);
} //End draw

void keyTyped() {
  if (key == 119) {squareYpos -= 5;}
  if (key == 115) {squareYpos += 5;}
  if (key == 100) {squareXpos += 5;}
  if (key == 97) {squareXpos -= 5;}
println("typed " + int(key) + " " + keyCode); 
}

void keyPressed() {} //End KeyPressed


void mousePressed() {
  println ("The Corner Square placement is ", +squareXpos, "\t", +squareYpos);

} //End mousePressed


// End Main Program
