//Global Variables
int appWidth=1, appHeight=1;
//
//Declaring Display Geometry: landscape, square, portrait
size(700,1080); //Able to deploy with fullScreen();


//Concatenation: , or + (i.e space)
println("\t\t\t Width="+width,"\t Height="+height);
println("Display Monitor:", "\t Width:"+displayWidth, "\t Height:"+displayHeight);


//Fitting CANVAS into Monitor Display
if ( height > displayHeight ) appHeight=0;
if ( width > displayWidth ) appWidth=0; //CANVAS-width will not fit
if ( appWidth==0 || appHeight==0 ) println("Stop, me is broke");

//Outputting instructions to user when errors with above
//Bruh, turn your phone around
//
