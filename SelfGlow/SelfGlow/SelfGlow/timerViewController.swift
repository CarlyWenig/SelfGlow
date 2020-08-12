//
//  timerViewController.swift
//  SelfGlow
//
//  Created by Carly Wenig on 8/12/20.
//  Copyright © 2020 Carly Wenig. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    @objc var seconds = 30
    var timer = Timer()

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    override func viewDidLoad() {
                 super.viewDidLoad()
            
        func slider(_ sender: UISlider) {
                   seconds = Int(sender.value)
                   label.text = String(seconds) + "seconds"
               }
               
        func start(_ sender: UIButton) {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getter: timerViewController.seconds), userInfo: nil, repeats: true)
               }
        func counter()
               {
                   seconds -= 1
                   label.text=String(seconds)
            + "seconds"
                   if seconds == 0 {
                       timer.invalidate ()
                       seconds = 30
                       sliderOutlet.setValue(30, animated: true)
                       label.text = "30 seconds"
        // Do any additional setup after loading the view.
    }
    

       
       }
    
       
        
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


