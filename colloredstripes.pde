ArrayList <Ant> ants = new ArrayList <Ant>();
int numAnts = 25;

void setup(){
  size(900,600);
  frameRate(60);
  for(int i =0; i < numAnts; i++) {
  ants.add(new Ant());
  //ants.add(i).bodySize =20;//int (random(4,90));
  
  }

}


void draw() {
 // background(0);
     
  for (int i =0; i < numAnts; i++) {
  ants.get(i).drawAnt();
  
  //if x of some Ant == to x of another Ant-> if y are the same then combine
  for (int j=0; j <numAnts; j++){
    if (i!=j) {
       if (abs(ants.get(i).x-ants.get(j).x) < abs(ants.get(i).bodySize-ants.get(j).bodySize)) {
    
          if (abs(ants.get(i).y-ants.get(j).y) < abs(ants.get(i).bodySize-ants.get(j).bodySize)){
            print("Gratulation"); 
          //  ants.get(i).speed=(2.0,2.0);
            ;
          }
       }
    }
  }
  
  if (ants.get(i).killAnt==true) {
    ants.remove(i); 
    numAnts--;
    }
  }

}
