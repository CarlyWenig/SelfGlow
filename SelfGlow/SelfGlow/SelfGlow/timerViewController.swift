//
//  timerViewController.swift
//  SelfGlow
//
//  Created by Carly Wenig on 8/12/20.
//  Copyright © 2020 Carly Wenig. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    var minutes = 0
    var timer = Timer()
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func slider(_ sender: UISlider) {
        minutes = Int(sender.value)
        label.text = String(minutes) + " minute(s)"
    }
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(timerViewController.counter), userInfo: nil, repeats: true)
        sliderOutlet.isHidden = true
        startOutlet.isHidden = true
        
    }
    @objc func counter()
    {
        minutes -= 1
        label.text = String(minutes)
        
        if (minutes == 0)
        {
            timer.invalidate()
            sliderOutlet.isHidden = false
            startOutlet.isHidden = false
        }
    }
    
    @IBOutlet weak var pauseOutlet: UIButton!
    @IBAction func pause(_ sender: UIButton)
    {
        timer.invalidate()
        minutes = 0
        sliderOutlet.setValue(0, animated: true)
        label.text = "0" + " minute(s)"
        
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
