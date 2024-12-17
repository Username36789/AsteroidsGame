class Spaceship extends Floater {
  // Private members specific to the spaceship
  private int[] xCorners; // encapsulated shape
  private int[] yCorners;
  private int corners; // number of corners for the shape
  private int myColor; // spaceship color

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

  // Public getters for encapsulated members
  public int[] getXCorners() {
    return xCorners;
  }
  public int[] getYCorners() {
    return yCorners;
  }
  public int getCorners() {
    return corners;
  }
  public int getColor() {
    return myColor;
  }

  // Public setters for encapsulated members
  public void setXCorners(int[] newXCorners) {
    xCorners = newXCorners;
  }
  public void setYCorners(int[] newYCorners) {
    yCorners = newYCorners;
  }
  public void setCorners(int newCorners) {
    corners = newCorners;
  }
  public void setColor(int newColor) {
    myColor = newColor;
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
