float vector[] = new float[5];
int a;

void setup(){
   fullScreen(P3D);
   inicializar();
}

void draw(){
  if(mousePressed){
    quickSort(vector, 0, vector.length-1);
  }
  mostrar();
}
 
void mostrar(){
  background(255);
    for (int i = 0; i<vector.length; i++){
       noFill();
       stroke(0);
       strokeWeight(1);
       pushMatrix();
         translate(map(i, 0, vector.length, width/vector.length, width), height/2);
         rotateX(a);
         rotateY(a);
         rotateZ(a);
         sphere(vector[i]);
       popMatrix(); 
       delay(15);
       a++;
   }
}

void inicializar(){
  for(int i=0; i<vector.length; i++){
    vector[i]=random(100);
  }
}

void quickSort(float arr[], int begin, int end) {
  if (begin < end) {
    int partitionIndex = partition(arr, begin, end);

    quickSort(arr, begin, partitionIndex-1);
    quickSort(arr, partitionIndex+1, end);
  }
}
 int partition(float arr[], int begin, int end) {
  float pivot = arr[end];
  int i = (begin-1);

  for (int j = begin; j < end; j++) {
    if (arr[j] <= pivot) {
      i++;

      float swapTemp = arr[i];
      arr[i] = arr[j];
      arr[j] = swapTemp;
    }
  }

  float swapTemp = arr[i+1];
  arr[i+1] = arr[end];
  arr[end] = swapTemp;

  return i+1;
}
