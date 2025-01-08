class Star{ //note that this class does NOT extend Floater
  private float x, y;
  private int size;

  Star() {
    x = (float)(Math.random() * width);
    y = (float)(Math.random() * height);
    size = (int)(Math.random() * 3 + 1); // Star size b/w 1 and 3
  }

  public void show() {
    fill(255);
    noStroke();
    ellipse(x, y, size, size);
  }
}
