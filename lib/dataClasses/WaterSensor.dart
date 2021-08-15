
class WaterSensor {
  int waterused = 0;
  String id ="0";
  String name ="";


  WaterSensor(String id, String name, int waterused){
    this.waterused =waterused;
    this.id = id;
    this.name = name;

  }

  int getWaterused (){
    return waterused;
  }

  String getId (){
    return id;
  }

  String getName(){
    return name;
  }

  void setWaterUsed(int water){
    waterused+=water;
  }
}