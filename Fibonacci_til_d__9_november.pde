// Variabler //<>// //<>// //<>// //<>//


void setup() {
  size(2800, 600);
  fill(0); // ingen grund til at gentage fill() :)
  textSize(20);
  pushMatrix();
  // Sætter skærmens øverste punkt i midten til at være 0,0
  translate(width/4, 0); // jeg skal ikke forskyde så meget for jeg går ikke ud fra width/2 mere

  // n,x,y,xwidth
  println(fibonacci(10, 500, 50, 500)); // Tre parametre. Første er tal du ønsker i talrækken, andet er hvor meget x koordinatet skal ændre sig ned af træet, og tredje er hvor meget y værdien skal stige i hver gren.
  popMatrix();
}


// Har valgt integer, fordi hvis man tager en funktionen til et stort tal kan int ikke holde den.
Integer fibonacci(int n, int x, int y, int xwidth) {
  // Return statements - SKAL VÆRE NEDERST
  // din terminerings regl SKAL være øverst :)
  if (n == 0 || n == 1) {
    // tegn den sidste cirkel uden linjer
    circle(x, y, 15);
    text(x+" "+y, x, y);
    return n;
  }

  // tegn cirkel og forbind med linjer.
  circle(x, y, 15);
  text(x+" "+y, x, y);
  // her er noget med en regne regl, derfor skal det i parantes
  line (x, y, x+xwidth, y+50);
  line (x, y, x-xwidth, y+50);

  return fibonacci(n-1, x-xwidth, y+50, xwidth/2) + fibonacci(n-2, x+xwidth, y+50, xwidth/2);
}
