
class WaterSensor {
  int waterused = 0;
  int id =0;

  WaterSensor(int id){
    waterused =0;
    this.id = id;
  }

  int getWaterused (){
    return waterused;
  }

  int getId (){
    return id;
  }
}