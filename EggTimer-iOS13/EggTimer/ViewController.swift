//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let eggTimes = ["Soft":(5*60),"Medium":(7*60),"Hard":(12 * 60)]
    var secondPassed = 0
    var totalTime = 0
    var timer: Timer? = nil
    
    var pianoSound = URL(fileURLWithPath: Bundle.main.path(forResource: "alarm_sound", ofType: "mp3")!)
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var titleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
                  audioPlayer = try AVAudioPlayer(contentsOf: pianoSound)
             } catch {
                // couldn't load file :(
             }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func onPressedButton(_ sender: UIButton) {
        
        timer?.invalidate()
        
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        totalTime = result
        progress.progress = 0
        secondPassed = 0
        titleText.text = hardness
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,  selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if(secondPassed <= totalTime) {
            secondPassed += 1

            let percentageProgress = Float(secondPassed) / Float(totalTime)
            progress.progress = percentageProgress
            
        }else{
            titleText.text = "Done"
            audioPlayer.play()
            timer?.invalidate()
        }
    }
}
