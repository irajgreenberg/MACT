PImage img01;

void setup() {
  size(800, 600);
  img01 = createImage(600, 400, RGB);
  img01.loadPixels();
  
  for (int i = 0; i < img01.pixels.length; i++) {
    img01.pixels[i] = color(random(255), random(255), random(255));
  }
  img01.updatePixels();
  image(img01, 100, 100);
}

void draw() {
 // background(255);
}
