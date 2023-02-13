float goldenRatio = 1.618;
public void setup(){
  size(800, 500);
}
public void draw(){
  goldenSpiral(500);
}
public void goldenSpiral(float length){
  if(length < 1){
    return;
  }
  fill(25);
  rect(0, 0, length, length);
  fill(23,24,100);
  stroke(134, 244, 64);
  arc(length, length, 2*length-1, 2*length-1, PI, 3*PI/2);  
  translate(length*goldenRatio, 0);
  rotate(PI/2);
  goldenSpiral(length/goldenRatio);
}
