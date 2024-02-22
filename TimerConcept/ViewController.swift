//
//  ViewController.swift
//  TimerConcept
//
//  Created by Lee Sangoroh on 22/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.systemRed, .systemBlue, .systemCyan, .systemMint, .systemPink, .systemTeal]
    var timer:Timer = Timer.init()
    var runTimerLimit:Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createTimer()
    }

    func createTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 2,
                                         target: self,
                                         selector: #selector(fireTimer),
                                         userInfo: nil,
                                         repeats: true)
        /// in miliseconds
        /// gives system time flexibility to execute tasks
        timer.tolerance = 200
        
        //stop timer
        //timer.invalidate()

    }
    
    @objc func fireTimer(){
        view.backgroundColor = colors.randomElement()
        runTimerLimit += 1
        print(runTimerLimit)
        
        if runTimerLimit >= 10.0{
            timer.invalidate()
        }
    }
    
}

