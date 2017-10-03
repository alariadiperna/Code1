//figure 45.3 "icicle storm

int w = 16;
int h = 16;
int index = 2;
void setup() {
 size(640, 384);
 background(0);
 strokeWeight(1.5);
 stroke(175);
}

void draw() {
 int x1 = w*index;
 int x2 = x1 + w;
 int y1 = h*23;
 int y2 = h*24;
 if (random(2) < 1) {
 line(x2, y1, x1, y2);
 
 } 
 
 
 index++;
 if (index == width/w) {
 PImage p = get(0, h, width, h*23);
 background(0);
 set(0, 0, p);
 index = 0;
 }
}


//this is basically adapting the processing code shown in the book