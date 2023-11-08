// Variabler


void setup() {
  size(1000,600);
  fill(0); // ingen grund til at gentage fill() :)
  pushMatrix(); //<>//
  // Sætter skærmens øverste punkt i midten til at være 0,0
  translate(width/2,0);
  println(fibonacci(10,500,50)); // Tre parametre. Første er tal du ønsker i talrækken, andet er hvor meget x koordinatet skal ændre sig ned af træet, og tredje er hvor meget y værdien skal stige i hver gren. //<>//
  popMatrix();
}


// Har valgt integer, fordi hvis man tager en funktionen til et stort tal kan int ikke holde den.
Integer fibonacci(int n, int x, int y) { //<>//

  

  //if(x < width/2) {
    //circle(-x,y,15);
    circle(x,y,15); //<>//
    line (x,y,x/2,y+50);
  //} else {
//    circle(0,y,15);
//  }
  
  
  // Return statements - SKAL VÆRE NEDERST
  if(n == 0 || n == 1) {
    return n;
  }
  
  return fibonacci(n-1,(x/2)*-1,y+50) + fibonacci(n-2,x/2,y+50);
  
}
