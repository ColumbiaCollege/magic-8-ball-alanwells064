//define output variable
int eger = 0;
//define background variable
int bg = 0;
//define output string
String[] magic = new String[9];
{
  magic[0]="what's up chief?";
  magic[1]="this ain't it chief";
  magic[2]="THIS IS IT CHIEF";
  magic[3]="i don't know about this one chief";
  magic[4]="yea probably chief";
  magic[5]="i can't understand you chief";
  magic[6]="maybe one day chief";
  magic[7]="nah you crazy chief";
  magic[8]="on GOD this might be it chief";
}
//set canvas size
void setup() {
  size(500, 500);
}
//start drawing
void draw()
{
  //every frame, increase the bg variable by 1 until it reaches 255, then decrease it every frame by 1 until it reaches 0
  if (frameCount % 510 <= 255) {
    bg++;
  } else {
    bg--;
  }
  //set background color using changing bg variable
  background(50, 100, bg);
  //draw circles that make up the ball
  fill(30);
  ellipse(250, 250, 500, 500);
  fill(50);
  ellipse(250, 250, 150, 150);
  fill(0);
  ellipse(250, 250, 130, 130);
  //set text settings for chief ball title
  textAlign(CENTER, CENTER);
  textSize(30);
  fill(220);
  text("MAGIC CHIEF BALL", 250, 100);
  textSize(10);
  text("Click to see if this is it!", 250, 120);
  //set text settings for ball output
  textSize(16);
  fill(255);
  //if the mouse is pressed, generate a random integer 1-8 and print it in console (output value)
  if (mousePressed==true) {
    float r = random(1, 9);
    eger = int(r);
    println(eger);
    //if mouse is not pressed, use the random output value to draw output as text
    //we defined value as 0 at the very beginning, which is not normally a possible random value, so if the mouse has never been clicked, the output will always display output #0 (what's up chief?)
  } else {
    text(magic[eger], 200, 200, 100, 100);
  }
}
