//tenuttolucila
//tp0comision1
PImage paisajemontana; //paisajemontana.jpg
size(800, 400);
paisajemontana = loadImage( "paisajemontana.jpg" );
//paisajemontana.resize(400, 400);
background(197, 238, 247);
image(paisajemontana, 0, 0, 400, 400);
fill(59, 130, 147);
stroke(59, 130, 147);
rect(400, 257, 400, 800);
fill(176, 196, 193);
noStroke();
triangle(600, 257, 650, 170, 700, 257);
fill(191, 182, 150);
stroke(89, 124, 86);
noStroke();
triangle(800, 0, 650, 257, 800, 257);
fill(176, 196, 193);
quad(420, 80, 590, 130, 650, 257, 400, 257);
fill(89, 124, 86);
triangle(400, 0, 530, 257, 400, 257);
stroke(89, 124, 86);
quad(400, 130, 500, 130, 550, 257, 400, 257);
fill(78, 103, 76);
quad(400, 150, 450, 150, 500, 257, 400, 257);
fill(93, 82, 54);
quad(580, 300, 630, 300, 680, 400, 550, 400);
stroke(0);
fill(0);
quad(595, 260, 615, 260, 615, 300, 595, 300);
noStroke();
ellipse(605, 250, 20, 20);
