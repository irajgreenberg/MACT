// Pixel Linear Gradient
// between two secondary colors
PImage img01;
// green
color col1 = color(0, 0, 255);
//purple
color col2 = color(255, 127, 0);


// psuedo code
// colDelta = col2-col1
// amount to shift the pixel = colDelta/pixelCount

void setup() {
  size(800, 600);
  img01 = createImage(600, 400, RGB);
  img01.loadPixels();

  float r1 = red(col1);
  float r2 = red(col2);

  float g1 = green(col1);
  float g2 = green(col2);

  float b1 = blue(col1);
  float b2 = blue(col2);

  float redDelta = r2-r1;
  float greenDelta = g2-g1;
  float blueDelta = b2-b1;

  float redStep = redDelta/img01.pixels.length;
  float greenStep = greenDelta/img01.pixels.length;
  float blueStep = blueDelta/img01.pixels.length;

  for (int i = 0; i < img01.pixels.length; i++) {
    img01.pixels[i] = color(r1+redStep*i, g1+greenStep*i, b1+blueStep*i);
  }
  img01.updatePixels();

  image(img01, 100, 100);
}

void draw() {
  // background(255);
}
