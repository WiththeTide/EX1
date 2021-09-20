void setup() {
  size(720, 720);
  background(255, 255, 255);
  
  rect(10, 10, 20, 20);
  rect(40,10,20,20);
  rect(70,10,20,20);
  
  //first rect: draw;   second rect: erase;   third rect: reset;
}

void draw() {
  if(mousePressed){
    if (onbutton(10,10,20,20)== true){          //draw button
      stroke(0);
      strokeWeight(1);
    }
    if (onbutton(40,10,20,20)== true){          //erase button
      stroke(255,255,255);
      strokeWeight(10);
    }
    if (onbutton(70,10,20,200)== true){        // reset button 
      background(255,255,255);
      
      stroke(0);
      strokeWeight(1);
      rect(10, 10, 20, 20);
      rect(40,10,20,20);
      rect(70,10,20,20);
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
  
