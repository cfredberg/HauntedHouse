// Add your variables below! //<>//


// START HERE!
//
// Make a PImage variable for the scary house background
//  example: PImage scaryHouse
PImage scaryHouse;
Pumpkin myPumpkin;
Ghost myGhost;
Rain rainfall;
Lightning lightning;
Spotlight spotlight;

void setup() {
  // Set the size of your sketch to at least 600, 400 using
  // the size() method.
  size(1200, 800);

  // Pick a scary house and initialize it using loadImage,
  //  example: scaryHouse = loadImage("scaryHouse1.jpg");
  scaryHouse = loadImage("scaryHouse1.jpg");

  // Resize your scary house to the window size using
  //  scaryHouse.resize(width, height);
  scaryHouse.resize(width, height);

  // DRAWING THE SCARY HOUSE
  //
  // In the draw function below, call drawBackground() with your
  // scary house as an input parameter
  // Do you see your scary house??
  
  // DRAWING THE PUMPKINS
  //
  // Create a new variable for a pumpkin at the top of this sketch
  // then initialize it to a new Pumpkin(x, pumpkinColor)
  //   example: myPumpkin = new Pumpkin(350, #E26238);
  myPumpkin = new Pumpkin(350, #E26238);

  // In the draw function below, call the pumpkin's draw() method
  // Do you see your pumpkin?

  // DRAWING THE GHOSTS
  //
  // Create a new variable for a ghost at the top of this sketch
  // then initialize it to a new Ghost(y, speed, flyingDirection)
  //   example: myGhost = new Ghost(50, 5, "right");
  myGhost = new Ghost(30, 10, "left");

  // In the draw function below, call the ghost's draw() method
  // Do you see your ghost?

  // DRAWING THE RAIN
  //
  // Create a new variable for the rain at the top of this sketch
  // then initialize it to new Rain(color)
  //   example: rainfall = new Rain(#95CDEA);
  rainfall = new Rain(#fc0303);

  // In the draw function below, call the rain's draw() method
  // Do you see rain falling?

  // DRAWING THE LIGHTNING
  //
  // Create a new variable for the lightning at the top of this
  // sketch then initialize it to new Lightning()
  //   example: lightning = new Lightning();
  lightning = new Lightning();

  // In the draw function below, call the lightnings's draw()
  // method ONLY when the mouse is pressed
  // Do you see the lightning?

  // DRAWING THE SPOTLIGHT
  //
  // Create a new variable for the spotlight at the top of this
  // sketch then initialize it to new Spotlight()
  //   example: spotlight = new Spotlight();
  spotlight = new Spotlight();
}

void draw() {
  // Draw your pumpkins, ghosts, rain, and lightning below!
  drawBackground(scaryHouse);
  myPumpkin.draw();
  myGhost.draw();
  rainfall.draw();
  
  if (mousePressed){
    lightning.draw();
  }
  
  if (myGhost.getX() < 150){
    myGhost.direction("right");
  }else if (myGhost.getX() > width-150){
    myGhost.direction("left");
  }
  
  if (myPumpkin.getBounces() < 10){
    myPumpkin.bounce();
  }else{
    myPumpkin.stop();
  }
  
  // Try out the other scary house backgrounds and customize
  // your scary house!
  print(myPumpkin.getBounces());










  // There are hidden spotlight and grayscale features in this
  // recipe. See if you can figure out how to use them...

  // ---------------------------------------------------------
  // Here are some other methods you can try:
  //  pumpkin.setPumpkinColor();
  //  pumpkin.bounce();
  //  pumpkin.stop();
  //  pumpkin.setBounceHeight();
  //  pumpkin.moveRight();
  //  pumpkin.moveLeft();
  //  ghost.setGhostTransparency();
  //  lightning.setLightningFlash();
  //  rainfall.setAmountOfRain();
  //  spotlight.setPixelSize();
  //  spotlight.setSpotlightSize();
  // ---------------------------------------------------------
}

void drawBackground(PImage bgImage) {
  background(bgImage);
  drawFloor();
}

void drawFloor() {
  int floorHeight = 30;

  push();

  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);

  pop();
}

// Call this method at the very bottom of the draw() method!
void drawGrayscale( boolean grayscaleEnabled ) {
  if ( grayscaleEnabled ) {
    filter( GRAY  );
  }
}
