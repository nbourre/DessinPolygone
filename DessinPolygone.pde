/**
Programme permettant de dessiner des polygones aléatoirement.
*/

Polygone poly;

ArrayList<Polygone> polys;

int nbPolygones = 100;

void setup () {
  size (800, 600);
  
  polys  = new ArrayList<Polygone>();
  
  for (int i = 0; i < nbPolygones; i++) {
    Polygone p = new Polygone (random (0, width), random(0, height), int(random (3, 30)), int(random(5, 50)), 0);
    
    p.couleurFond = color (random (0, 255), random (0, 255), random (0, 255));
    p.angleRotation = TWO_PI / 360 * random(-10, 10);
    p.alpha = int(random (25, 255));
    polys.add(p);
    
  }
}

void draw () {
  background (0);
  fill (255);
  
  for (int i = 0; i < nbPolygones; i++) {
    polys.get(i).update();
    
    polys.get(i).afficher();
    
  }
  //poly.angle += TWO_PI / 180;
  
}