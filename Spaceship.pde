class Spaceship extends Floater {
  public Spaceship() {
    corners = 5;
    xCorners = new int[] {20, -10, -6, -10, 20}; // Shape of the spaceship
    yCorners = new int[] {0, 10, 0, -10, -5};
    myColor = color(0, 255, 0); // green spaceship
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0; // pointing to the right
  }

  // Hyperspace - teleport to a random position
  public void hyperspace() {
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myXspeed = 0; // Stop movement
    myYspeed = 0;
    myPointDirection = Math.random() * 360;
  }
}
