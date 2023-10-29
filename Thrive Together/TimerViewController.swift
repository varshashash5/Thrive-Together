//
//  TimerViewController.swift
//  Thrive Together
//
//  Created by VARSHA SHASHISHEKAR on 10/14/23.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timeRemaining: Int = 60
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func playTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    }
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        timeRemaining = 60
        timerLabel.text = "\(timeRemaining)"
    }
    @objc func step() {
        if timeRemaining > 0 {
            timeRemaining -= 1
            
        }
        else{
            timer.invalidate()
            timeRemaining = 60
        }
        timerLabel.text = "\(timeRemaining)"
    }
    

}
