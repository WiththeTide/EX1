PImage drawbutton;
PImage erase;
PImage reset;
PFont fonts;

void setup() {
  fonts =createFont("Bobcat",50);
  fill (0);
  size(720, 720);
  background(255, 255, 255);
  
  drawbutton=loadImage("drawButton.png");
  drawbutton.resize(100,60);
  
  erase=loadImage("Erase.png");
  erase.resize(100,60);
  
  reset=loadImage("reset.png");
  reset.resize(100,60);
}

void draw() {
  textFont(fonts);
  text("Press r for red stroke",100,100);
  text("Press g for green stroke",100,125);
  text("Press b for blue stroke",100,150);
  image(drawbutton,100,0);
  image(erase,300,0);
  image(reset,500,0);
  
  if(mousePressed){
    if (onbutton(100,0,100,60)== true){          //draw button
      stroke(0);
      strokeWeight(1);
    }
    if (onbutton(300,0,100,60)== true){          //erase button
      stroke(255,255,255);
      strokeWeight(10);
    }
    if (onbutton(500,0,100,60)== true){        // reset button 
      background(255,255,255);
      
      stroke(0);
      strokeWeight(1);

    }
line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if (keyPressed) {                                    //Hold r for red stroke 
    if (key== 'r') {                                  
      stroke(255,0,0);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (key== 'g') {                            //hold g for green stroke
      stroke(0, 255, 0);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
    else if (key== 'b') {                              //hold b for blue stroke
      stroke(0, 0, 255);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  } 
}


  boolean onbutton(int x,int y,int z, int h){                                   //button locations for mouse click
   if (mouseX >= x &&mouseX <= x+z && mouseY >= y && mouseY <= y+h){
     return true;
   }
    return false;
  }
  
