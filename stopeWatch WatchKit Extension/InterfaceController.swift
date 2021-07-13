//
//  InterfaceController.swift
//  stopeWatch WatchKit Extension
//
//  Created by kumar praveen on 13/07/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func playButtonTapped() {
        timmer.start()
    }
    
    @IBAction func pausedButtonTapped() {
        timmer.stop()
    }
    
    @IBAction func resetTapped() {
        timmer.stop()
        timmer.setDate(Date.init())
    }
    
    @IBOutlet weak var timmer: WKInterfaceTimer!
    
    
}
