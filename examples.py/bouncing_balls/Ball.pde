class Ball{
  PVector location = new PVector(random(width), random(height));
  PVector velocity = new PVector(1.5, 2.1);
  PVector gravity = new PVector(0, 0.2);
  
  void physics(){
    location.add(velocity);
    velocity.add(gravity);
    if ((location.x > width) || (location.x < 0)){
      velocity.x = velocity.x * -1;
    }
    
    if (location.y > height-20){
      velocity.y = velocity.y * -0.95;
      location.y = height-20;
    }
    
  }
  
  void show(){
    ellipse(location.x, location.y, 48, 48);
  }
}
