void drawNow(int sketch) {

  for (int i =0; i<n; i++) {

    xTop[i] = random(10, width-10); 

    xBottom [i] = random(width/2, height/2);

    line(xTop[i], 200, xBottom[i], height/2);

  }

  for (int b =0; b<n; b++) {

    xTop[b] = random(width/2, height/2);

    xBottom[b] = random(10, width-10);

    line(xTop[b], height/2, xBottom[b], 500);

  }

}