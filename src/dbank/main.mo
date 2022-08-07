import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";
actor DBank{
  stable var currentValue: Float = 300;
  //currentValue := 300;

  stable var startTime = Time.now();
  //startTime := Time.now(); 
  Debug.print(debug_show(startTime));

  let id = 76587263975865;

 // Debug.print("Hello");

public func topUp(amount: Float)  {
  currentValue +=amount;
  Debug.print(debug_show(currentValue));
};

public func withDraw(amount: Float)  {
  let tempValue: Float= currentValue -amount;
  if(tempValue >=0 ){
    currentValue := tempValue;
  Debug.print(debug_show(tempValue));
  }else{
    Debug.print("Amount too large");
  }
};

public query func checkBalence(): async Float {
  return currentValue;
};

public func compound(){
  let currentTime = Time.now();
  let timeElps = (currentTime - startTime)/1000000000;
  currentValue := currentValue * (1.01 ** Float.fromInt(timeElps));
  startTime := currentTime;
};

}