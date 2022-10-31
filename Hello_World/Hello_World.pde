//Global Variables
int 
appWidth, appHeight,
squareXpos, squareYpos, 
bulletXpos, bulletlookstime,
Killcount,
zombieXpos_1, zombieYpos_1, zombieHitbox_1 = (height/100) * (width/100),
zombieXpos_2, zombieYpos_2, zombieHitbox_2 = (height/100) * (width/100),
zombieXpos_3, zombieYpos_3, zombieHitbox_3 = (height/100) * (width/100),
zombieXpos_4, zombieYpos_4, zombieHitbox_4 = (height/100) * (width/100)
;


float BulletRotation, Yrandomizer, Xrandomizer, GameTimer, SurvivedTime;
boolean MainMenu = true, GameStart = false, bullet = false, bulletlooks = false, nightmode = false;
void setup() {
  
  //Declaring Display Geometry: landscape, square, portrait
  size( 900, 500); //Able to deploy with fullScreen();
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
  
  
} //End setup


void draw() {
  
  background(100,80,25);
  
  //THIS SIDE OF THE DRAW PAGE IS THE MAIN MENU
  if (MainMenu) {
  fill (0);
  rect ( width/9.75, height/8, width/1.25, height/2);
  noFill ();
  fill (255);
  textSize ((width/100) * (height/100));
  text ("Unlimited Undead", width/2 - width/4.5, height/2.5);
  noFill ();
  
  
  fill (255);
  rect ( width/8, height/1.5, width/4, height/5);
  noFill ();
  fill (0);
  textSize ((width/150) * (height/150));
  text ("NightMode", width/5, height/1.35);
  textSize ((width/175) * (height/175));
  text ("There is no blue color in the game", width/6.5, height/1.3);
  text ("so instead we made the game harder (: ", width/6.9, height/1.25);
  noFill ();
  
  fill (255);
  rect ( width/1.6, height/1.5, width/4, height/5);
  noFill ();
  textSize ((width/150) * (height/150));
  fill (0);
  text ("Classic", width/1.385, height/1.3);
  noFill ();
  }
  
  textSize ((width/175) * (height/175));
  fill (255);
  rect (10, 10, 125, 45);
  noFill ();
  fill (0);
  text("Time Survived " + SurvivedTime / 100, 15 , 25);
  text("Number of Kills " + Killcount, 15, 40);
  noFill ();
  
  //Target
  fill (200,10,10);
  ellipse(mouseX,mouseY,10,10);
  noFill ();
  
  
  
  //THIS SIDE OF THE DRAW PAGE IS THE GAME ITSELF
  
  if (GameStart) {
  //GameTimer / Setup
  GameTimer = GameTimer + 0.01;
  frameRate (80 + GameTimer);
  background(100,80,25);
  
  //Score for both Time survived + KillCount
  fill (255);
  rect (10, 10, 125, 45);
  noFill ();
  SurvivedTime = round (SurvivedTime + 1);
  fill (0);
  text("Time Survived " + SurvivedTime / 100, 15 , 25);
  text("Number of Kills " + Killcount, 15, 40);
  noFill ();
  
  //Player size/movement
  fill (255);
  square( squareXpos, squareYpos, (height/100) * (width/100) );
  if (squareYpos > height - (height/100) * (width/100) || squareYpos < 0 || squareXpos > width - (height/100) * (width/100) || squareXpos < 0) {
  MainMenu = true;
  GameStart = false;
  println ("You Ran Off The Map! Game Over. You Survived: " + SurvivedTime / 100, "seconds, Had", + Killcount, "Kills");
  }//if end statement
  
  
  
  //Player hitbox
  if (zombieXpos_1 == squareXpos + ((height/100) * (width/100))/2 && zombieYpos_1 == squareYpos + ((height/100) * (width/100))/2|| 
      zombieXpos_2 == squareXpos + ((height/100) * (width/100))/2 && zombieYpos_2 == squareYpos + ((height/100) * (width/100))/2|| 
      zombieXpos_3 == squareXpos + ((height/100) * (width/100))/2 && zombieYpos_3 == squareYpos + ((height/100) * (width/100))/2||
      zombieXpos_4 == squareXpos + ((height/100) * (width/100))/2 && zombieYpos_4 == squareYpos + ((height/100) * (width/100))/2) {
  MainMenu = true;
  GameStart = false;
  println ("The Zombies Caught You! You Survived: " + SurvivedTime / 100, "seconds, Had", + Killcount, "Kills");
  }
  
  
  BulletRotation = atan2( mouseY - squareYpos - ((height/100) * (width/100))/2, mouseX - squareXpos - ((height/100) * (width/100))/2) * ( 180 / 3.14 );
 
 
  //Zombie 1
  if (squareXpos + ((height/100) * (width/100))/2 > zombieXpos_1) {
    zombieXpos_1 = zombieXpos_1 + 1;
  };
  if (squareXpos + ((height/100) * (width/100))/2 < zombieXpos_1) {
    zombieXpos_1 = zombieXpos_1 - 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 > zombieYpos_1) {
    zombieYpos_1 = zombieYpos_1 + 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 < zombieYpos_1) {
    zombieYpos_1 = zombieYpos_1 - 1;
  };
  fill (5,160,5);
  ellipse(zombieXpos_1,zombieYpos_1, (height/100) * (width/100), (height/100) * (width/100));
  
  //Zombie 2
  if (squareXpos + ((height/100) * (width/100))/2 > zombieXpos_2) {
    zombieXpos_2 = zombieXpos_2 + 1;
  };
  if (squareXpos + ((height/100) * (width/100))/2 < zombieXpos_2) {
    zombieXpos_2 = zombieXpos_2 - 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 > zombieYpos_2) {
    zombieYpos_2 = zombieYpos_2 + 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 < zombieYpos_2) {
    zombieYpos_2 = zombieYpos_2 - 1;
  };
  fill (5,160,5);
  ellipse(zombieXpos_2,zombieYpos_2, (height/100) * (width/100), (height/100) * (width/100));
  
  //Zombie 3
  if (squareXpos + ((height/100) * (width/100))/2 > zombieXpos_3) {
    zombieXpos_3 = zombieXpos_3 + 1;
  };
  if (squareXpos + ((height/100) * (width/100))/2 < zombieXpos_3) {
    zombieXpos_3 = zombieXpos_3 - 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 > zombieYpos_3) {
    zombieYpos_3 = zombieYpos_3 + 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 < zombieYpos_3) {
    zombieYpos_3 = zombieYpos_3 - 1;
  };
  fill (5,160,5);
  ellipse(zombieXpos_3,zombieYpos_3, (height/100) * (width/100), (height/100) * (width/100));
  
  //Zombie 4
  if (squareXpos + ((height/100) * (width/100))/2 > zombieXpos_4) {
    zombieXpos_4 = zombieXpos_4 + 1;
  };
  if (squareXpos + ((height/100) * (width/100))/2 < zombieXpos_4) {
    zombieXpos_4 = zombieXpos_4 - 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 > zombieYpos_4) {
    zombieYpos_4 = zombieYpos_4 + 1;
  };
  if (squareYpos + ((height/100) * (width/100))/2 < zombieYpos_4) {
    zombieYpos_4 = zombieYpos_4 - 1;
  };
  fill (5,160,5);
  ellipse(zombieXpos_4,zombieYpos_4, (height/100) * (width/100), (height/100) * (width/100));
  
  
  //Target
  fill (200,10,10);
  ellipse(mouseX,mouseY,10,10);
  noFill ();

  //Bullet
  if (bulletlooks) {
  translate(squareXpos + ((height/100) * (width/100))/2,squareYpos + ((height/100) * (width/100))/2);
  rotate (radians(BulletRotation));
  fill (255,255,0);
  rect (0 + ((height/100) * (width/100)), -2.5 , 10000, 5);
  noFill ();
  bulletlookstime = bulletlookstime + 1;
  if (bulletlookstime > 5) {bulletlooks = false; bulletlookstime = 0; }
  }
  else { if (nightmode) {translate(squareXpos + ((height/100) * (width/100))/2,squareYpos + ((height/100) * (width/100))/2);
  rotate (radians(BulletRotation - 50));
  fill (0);
  rect (-1000 - ((height/100) * (width/100)), -5 , 10000, -10000);
  
  rotate (radians(0 + 100));
  rect (-1000 - ((height/100) * (width/100)), 5 , 10000, 10000);
  noFill ();
    }
  }
  
  //mouse Hitbox vs Zombie 1
  if (bullet) {
    if (dist(mouseX,mouseY,zombieXpos_1,zombieYpos_1) < ((height/100) * (width/100))/2) { 
        println("hit");
        zombieYpos_1 = round (random(-height*.5,height*1.5));
        zombieXpos_1 = round (random(width,width*1.5));
        bullet = false;
        Killcount = Killcount + 1;
    }
  }
  
    //mouse Hitbox vs Zombie 2
  if (bullet) {
    if (dist(mouseX,mouseY,zombieXpos_2,zombieYpos_2) < ((height/100) * (width/100))/2) { 
        println("hit");
        zombieYpos_2 = round (random(-height*.5,height*1.5));
        zombieXpos_2 = round (random(width,width*1.5));
        bullet = false;
        Killcount = Killcount + 1;
      }
  }

  //mouse Hitbox vs Zombie 3
  if (bullet) {
    if (dist(mouseX,mouseY,zombieXpos_3,zombieYpos_3) < ((height/100) * (width/100))/2) { 
        println("hit");
        zombieYpos_3 = round (random(-height*.5,height*1.5));
        zombieXpos_3 = round (random(-width*.5,0));
        bullet = false;
        Killcount = Killcount + 1;
    }
  }
  
    //mouse Hitbox vs Zombie 4
  if (bullet) {
    if (dist(mouseX,mouseY,zombieXpos_4,zombieYpos_4) < ((height/100) * (width/100))/2) { 
        println("hit");
        zombieYpos_4 = round (random(-height*.5,height*1.5));
        zombieXpos_4 = round (random(-width*.5,0));
        bullet = false;
        Killcount = Killcount + 1;
      }
        else {
    bullet = false;
        }
  }
  
  }//end of GameStart Statement
  
  
} //End draw

void keyTyped() {
  if (GameStart) {
  if (key == 119) {squareYpos -= 10;}
  if (key == 115) {squareYpos += 10;}
  if (key == 100) {squareXpos += 10;}
  if (key == 97) {squareXpos -= 10;}
println("typed " + int(key) + " " + keyCode);
  }//end of GameStart statement
}

void keyPressed() {} //End KeyPressed


void mousePressed() {
  //THIS SIDE OF THE MOUSEPRESSED PAGE IS THE MAIN MENU
  if (MainMenu && mouseX > width/8 && mouseX < width/8 + width/4 && mouseY > height/1.5 && mouseY < height/1.5 + height/5) {
    println  ("Test complete1");
    nightmode = true;
    GameStart = true;
    MainMenu = false;
      
    //Resetting Positions and such
    //Square Position
    squareYpos = height/2 - (height/100) * (width/100);
    squareXpos = width/2 - (height/100) * (width/100);
  
  
    //Zombie 1 starting position
    zombieYpos_1 = round (random(-height,height*2));
    zombieXpos_1 = round (random(-width,width*2));
  
    //Zombie 2 starting position
    zombieYpos_2 = round (random(-height,height*2));
    zombieXpos_2 = round (random(-width,width*2));
  
    //Zombie 2 starting position
    zombieYpos_3 = round (random(-height,height*2));
    zombieXpos_3 = round (random(-width,width*2));
  
    //Zombie 1 starting position
    zombieYpos_4 = round (random(-height,height*2));
    zombieXpos_4 = round (random(-width,width*2));
  
    //Game Time starting # and # of kills
    GameTimer = 0;
    SurvivedTime = 0;
    Killcount = 0;
    }
      
  if (MainMenu && mouseX > width/1.6 && mouseX < width/1.6 + width/4 && mouseY > height/1.5 && mouseY < height/1.5 + height/5) {
    nightmode = false;
    GameStart = true;
    MainMenu = false;
      
    //Resetting Positions and such
    //Square Position
    squareYpos = height/2 - (height/100) * (width/100);
    squareXpos = width/2 - (height/100) * (width/100);
  
  
    //Zombie 1 starting position
    zombieYpos_1 = round (random(-height,height*2));
    zombieXpos_1 = round (random(-width,width*2));
  
    //Zombie 2 starting position
    zombieYpos_2 = round (random(-height,height*2));
    zombieXpos_2 = round (random(-width,width*2));
  
    //Zombie 2 starting position
    zombieYpos_3 = round (random(-height,height*2));
    zombieXpos_3 = round (random(-width,width*2));
  
    //Zombie 1 starting position
    zombieYpos_4 = round (random(-height,height*2));
    zombieXpos_4 = round (random(-width,width*2));
  
    //Game Time starting # and # of kills
    GameTimer = 0;
    SurvivedTime = 0;
    Killcount = 0;
  
    }
  
  //THIS SIDE OF THE MOUSEPRESSED PAGE IS THE GAME ITSELF
  if (GameStart) {
  println ("Suqare Corner Position", "\t" +squareXpos, "\t" +squareYpos);
  bulletlooks = true;
  bullet = true;
  }//end of GameStart Statement
  
} //End mousePressed

void mouseReleased () {} 

// End Main Program
