//
//  main.swift
//  CodeChallenges
//
//  Created by Molina Espinosa, Pedro on 15/9/24.
//

import Foundation

let countdownActive = true;
var timer: Timer?

let second = 60;

    var clock = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "countdown", userInfo: nil, repeats: true)


func updateTimer(){
    print("\(second) seconds,")
}

