//
//  ViewController.swift
//  TimerConcept
//
//  Created by Lee Sangoroh on 22/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.systemRed, .systemBlue, .systemCyan, .systemMint, .systemPink, .systemTeal]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createTimer()
    }

    func createTimer(){
        let timer = Timer.scheduledTimer(timeInterval: 2,
                                         target: self,
                                         selector: #selector(fireTimer),
                                         userInfo: nil,
                                         repeats: true)
        /// in miliseconds
        /// gives system time flexibility to execute tasks
        timer.tolerance = 200
    }
    
    @objc func fireTimer(){
        view.backgroundColor = colors.randomElement()
    }
}

