//
//  InterfaceController.swift
//  stopeWatch WatchKit Extension
//
//  Created by kumar praveen on 13/07/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var counter = 0
    var timmerRunning = false
    var clock = Timer()
    @IBOutlet weak var timmerLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        super.willActivate()
        timmerLabel.setText("0:00")
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func playButtonTapped() {
        if !timmerRunning{
            clock = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.counter += 1
                self.timmerLabel.setText("\(self.secondsToHoursMinutesSeconds(seconds: self.counter))")
            })
        }
        timmerRunning = true
    }
    
    @IBAction func pausedButtonTapped() {
        timmerRunning = false
        clock.invalidate()
    }
    
    @IBAction func resetTapped() {
        counter = 0
        clock.invalidate()
        timmerLabel.setText("0:0:0")
    }
    
    func secondsToHoursMinutesSeconds (seconds : Int) -> String {
        return "\(seconds / 3600) : \((seconds % 3600) / 60) : \((seconds % 3600) % 60)"
    }
    
}
