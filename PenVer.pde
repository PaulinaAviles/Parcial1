void PenVer(){
   pushMatrix();

  float n1 = g/2 * (2 * m1 + m2) * sin(a1);
  float n2 = -m2 * g * sin(a1-2*a2);
  float n3 = -2*sin(a1-a2)*m2;
  float n4 = a2_v*a2_v*r2+a1_v*a1_v*r1*cos(a1-a2);
  float n5 = r1 * (2*m1+m2-m2*cos(2*a1-2*a2));
  float a1_a = (n1 + n2 + n3*n4) / n5;

  n1 = 2 * sin(a1-a2);
  n2 = (a1_v*a1_v*r1*(m1+m2));
  n3 = g * (m1 + m2) * cos(a1);
  n4 = a2_v*a2_v*r2*m2*cos(a1-a2);
  n5 = r2 * (2*m1+m2-m2*cos(2*a1-2*a2));
  float a2_a = (n1*(n2+n3+n4)) / n5;

  translate(0, height/4);
  stroke(0);
  strokeWeight(2);

  float y1 = r1 * sin(a1)*0.5;
  float x1 = r1 * cos(a1)*0.5;

  float y2 = y1 + r2 * sin(a2)*3;
  float x2 = x1 + r2 * cos(a2)*3;

  a1_v += a1_a;
  a2_v += a2_a;
  a1 += a1_v;
  a2 += a2_v;
  
 // println(x1*2, y1*2, x2*2, y2*2);
  
    popMatrix();
  
  int w = (int) random(10,40);
  int h = height;
  
  copy(int(x1), int(y1), w, h, int(x2), int(y2), w, h);
}
