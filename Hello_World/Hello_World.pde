//Global Variables
int appWidth, appHeight;
//
//Declaring Display Geometry: landscape, square, portrait
size(700 , 400); //Able to deploy with fullScreen();
appWidth = width;
appHeight = height;


//Concatenation: , or + (i.e space)
println("\t\t\t Width="+width,"\t Height="+height);
println("Display Monitor:", "\t Width:"+displayWidth, "\t Height:"+displayHeight);


//Fitting CANVAS into Monitor Display
if ( appHeight > displayHeight ) appHeight=0;
if ( appWidth > displayWidth ) appWidth=0; //CANVAS-width will not fit


//Outputting instructions to user when errors with above
if ( appWidth==0 || appHeight==0 ) println("Stop, me is broke"); //OR = ||
if ( appWidth!=0 && appHeight!=0 ) println("Display: Good to go"); //AND = &&

String ls ="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
String orientation = ( appWidth >= appHeight) ? ls : p ;
println(DO, orientation);
if ( orientation == p ) println(instruct); //Later, output to CANVAS
//
