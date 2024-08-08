//
//  main.swift
//  Protocols And Delegates
//
//  Created by Molina Espinosa, Pedro on 6/8/24.
//

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmeergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation(){
        print("What happened?")
    }
    func medicalEmergency(){
        delegate?.performCPR()
    }
    
}
struct Paramedic: AdvancedLifeSupport {
    init(handler: EmeergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("Paramedic perform CPR")
    }
}

class Doctor: AdvancedLifeSupport {
    init(handler: EmeergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The Doctor make chest compression for 30seconds.")
    }
    
    func useStethescope(){
        print("Listening for heart sounds.")
    }
}

class Surgeon: Doctor {
    override func performCPR(){
        super.performCPR()
        print("Sings Satying alive")
    }
    func useElectricDrill(){
        print("Whiiirrrll")
    }
}

let pepe = EmeergencyCallHandler()
let pedro = Paramedic(handler: pepe)
pepe.assessSituation()
pepe.medicalEmergency()
