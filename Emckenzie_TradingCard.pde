/* 
TRADING CARD
Uses two of the same photos
Photos will be added
Save them as Girl
*/
 
int x = 20;
int y = 20;
 
PImage Girl;    //First Image
PImage G;    //Third Image
PImage Logo;    //Second Image
 
void setup()  {
  size(300,500);
  background(0);    //Border
  noStroke();
  Girl = loadImage("Girl.jpg");    //Who's the Card About
  G = loadImage("Girl.jpg");      //Same photo as the on on top, but on the back of the card
  Logo = loadImage("Logo.png");    //Logo
}
 
void draw()  {
  //Front of the Card
  fill(100,211,203);    //Tercouse
  rect(x, y, 260, 460);
    //Picture Placement
    image(Girl, x+6, y+60);
    Girl.resize(100,150);
    //Name
    textSize(32);
    fill(0);
    text("The Runner", x+6, y+30);
    //Information
    textSize(12);
    fill(0);
    text("Date of Birth: Unknown", x+6, y+260);
    text("Place of Birth: Anime", x+6, y+273);
    text("Skills: Picture Memory and Art", x+6, y+286);
    text("*This photo is not mine*", x+6, y+50);
    //Logo
    text("Logo:", x+6, y+299);
    image(Logo, x+40, y+310);
    Logo.resize(40,40);
  
  //Back of the Card
  if (mousePressed)  {
      //Background
      fill(100,211,203);    //Tercouse
      rect(x,y,260,460);
      //Image
      image(G, x+20, y+20);
      G.resize(220,420);
      //Card Details
        //Banner at the bottom
        fill(214,216,74);
        rect(x+20, y+420, 220, 20);
        //Text
        textSize(18);
        fill(0);
        text("The Runner", x+70, y+435);
  }
}