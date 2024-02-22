//
//  ViewController.swift
//  TimerConcept
//
//  Created by Lee Sangoroh on 22/02/2024.
//

import UIKit

class ViewController: UIViewController {

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
                                         repeats: false)
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            timer.fire()
        })
    }
    
    @objc func fireTimer(){
        view.backgroundColor = .systemRed
    }
}

