class Polygone {
  float x, y;
  float angle;
  int nbCotes;
  int rayon;
  
  color couleurBordure = color (200, 0, 0);
  color couleurFond = color (0, 200, 0);
  
  float angleRotation = 0;
  int alpha = 255;
  
  Polygone (float _x, float _y, int _nbCotes, int _rayon, float _angle) {
    this.x = _x;
    this.y = _y;
    this.nbCotes = _nbCotes;
    this.rayon = _rayon;
    this.angle = _angle;
  }
  
  void update() {
    angle += angleRotation;
  }
  
  void afficher () {
    
    fill (color (red(couleurFond), green(couleurFond), blue(couleurFond), alpha));
    stroke (couleurBordure);
    
    
    pushMatrix();
    translate (x, y);
    rotate (angle);
    
    float angleIncrement = TWO_PI / (float) nbCotes;
    beginShape();
    
    for (float a = 0; a < TWO_PI; a += angleIncrement) {
      float sx = cos (a) * rayon;
      float sy = sin (a) * rayon;
      
      vertex (sx, sy);
    }
    
    endShape (CLOSE);
    
    popMatrix();
  }
  
}