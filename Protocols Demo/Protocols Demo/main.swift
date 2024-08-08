protocol CanFly{
    func fly()
}
class Bird {
    var isFemale = true
    func layEgg(){
        if isFemale {
            print("The bird make a new bird in a shell")
        }
    }
}
class Eagle: Bird, CanFly{
    func fly() {
        print("The eagle flaps its wing and lifts of into the sky")
    }
    
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("TYhe penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(fyingObject: CanFly){
        fyingObject.fly()
    }
}
struct AirPlane: CanFly{
    func fly() {
        print("The plane take off from the airport")
    }
    
    
}
var eagle = Eagle()
var penguin = Penguin()
var airPlane = AirPlane()
let museum = FlyingMuseum()
eagle.fly()
penguin.swim()
airPlane.fly()
museum.flyingDemo(fyingObject: eagle)
