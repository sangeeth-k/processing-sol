int n = 500;

float [] xTop = new float[n];

float [] xBottom = new float [n];

int initalSketch; 


void setup() {

  size(800, 700);

  smooth();

  background(255);

  noFill();

  stroke(50, 70);

  drawNow(initalSketch);

}

void draw() {

  stroke(30, 60);

  if (mousePressed && (mouseButton ==LEFT)) { 

    for (int p = 0; p<n; p+=100) {

      xTop[p] = random(10, width-10); 

      line(xTop[p], 200, mouseX, mouseY);

    }

  } 

  if (keyPressed) {

    if (key == ‘e’ || key == 'E’) {

      stroke(255);

      for (int p = 0; p<n; p+=100) {

        xTop[p] = random(10, width-10); 

        line(xTop[p], 200, mouseX, mouseY);

      }

    }

  }

  else if (mousePressed && (mouseButton == CENTER)) {

    background(255);

    drawNow(initalSketch);

  } 

  else if (mousePressed && (mouseButton == RIGHT)) { 

    stroke(10, 60);

    //for (int l = 0; l<n; l+=100) {

    //xBottom[l] = random(10, width-10); 

    //bezier(xBottom[l], random(550), xBottom[l], mouseY, xBottom[l], mouseX, xBottom[l], mouseX);

    //line(xBottom[l], 550, mouseX, mouseY);

    //}

    if (mouseY>500) {                            //activates when the mouse is greater than 550(height)

      line( mouseX, mouseY, pmouseX, pmouseY);

    }

  }

  else if (keyPressed) {

    if (key == ’s’ || key == ’S’) {

      save(“wall of line.png”);

    }

  }

  if (keyPressed) {

    if (key == 'z’ || key == 'Z’) { 

      stroke(30, 60);

      for (int l = 0; l<n; l+=100) {

        xBottom[l] = random(10, width-10); 

        bezier(xBottom[l], random(550), xBottom[l], mouseY, xBottom[l], mouseX, xBottom[l], mouseX);

      }

    }

  }

}