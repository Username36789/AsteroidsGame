//your variable declarations here
Spaceship ship;
Star[] stars;

// Booleans for smooth controls
boolean turningLeft = false;
boolean turningRight = false;
boolean accelerating = false;

public void setup() {
  size(800, 600);
  ship = new Spaceship();
  stars = new Star[100]; //array of 100 stars
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);

  // Display stars
  for (Star s : stars) {
    s.show();
  }

  // Handle smooth controls
  if (turningLeft) {
    ship.turn(-5); // smooth turning left
  }
  if (turningRight) {
    ship.turn(5); // smooth turning right
  }
  if (accelerating) {
    ship.accelerate(0.2); // smooth acceleration
  }

  // display and move spaceship
  ship.show();
  ship.move();
}

public void keyPressed() {
  if (keyCode == LEFT) {
    turningLeft = true; // Start turning left
  } else if (keyCode == RIGHT) {
    turningRight = true; // Start turning right
  } else if (keyCode == UP) {
    accelerating = true; // Start accelerating
  } else if (key == 'h' || key == 'H') {
    ship.hyperspace(); // Hyperspace
  }
}

public void keyReleased() {
  if (keyCode == LEFT) {
    turningLeft = false; // Stop turning left
  } else if (keyCode == RIGHT) {
    turningRight = false; // Stop turning right
  } else if (keyCode == UP) {
    accelerating = false; // Stop accelerating
  }
}
