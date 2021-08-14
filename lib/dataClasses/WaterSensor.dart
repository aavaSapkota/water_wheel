
class WaterSensor {
  int waterused = 0;
  int id =0;
  String name ="";

  WaterSensor(int id, String name){
    waterused =0;
    this.id = id;
    this.name = name;
  }

  int getWaterused (){
    return waterused;
  }

  int getId (){
    return id;
  }

  String getName(){
    return name;
  }
}