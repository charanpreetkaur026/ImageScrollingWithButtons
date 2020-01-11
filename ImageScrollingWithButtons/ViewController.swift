//
//  ViewController.swift
//  ImageScrollingWithButtons
//
//  Created by charanpreet kaur on 2020-01-11.
//  Copyright © 2020 charanpreet kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentSpeed : Double = 1.0
    @IBAction func speedSlider(_ sender: UISlider) {
        currentSpeed = Double(sender.value)
        print("Slider speed = \(currentSpeed) ?")
        //lblTimer.text = "\(currentSpeed) "
    }
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblTimer: UILabel!
    
    @IBOutlet weak var speedSlider: UISlider!
    let imgArray = ["one.png", "two.png", "three.png", "four.png", "five.png", "six.png", "seven.png", "eight.png","nine.png", "ten.png"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        speedSlider.addTarget(self, action: Selector("SliderValueChanged"), for: .valueChanged)
         var counter = 0
      lblTimer.text = "\(currentSpeed) "
        let timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(currentSpeed)
            , repeats: true) { timer in

            if(self.imgArray.count == counter+1)
              {
                  counter = 0
              }
            self.imgView.image = UIImage(named:self.imgArray[counter])
            //self.lblTimer.text = "\(counter)"
              counter += 1
            }
            //self.startTimerWithInterval(seconds: 1)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //self.startTimerWithInterval(seconds: 1)
    }
    
//    func sliderValueChanged()
//    {
//        let newValue = speedSlider.value
//        self.startTimerWithInterval(seconds: TimeInterval(newValue))
//    }
//    private func startTimerWithInterval(seconds: TimeInterval)
//    {
//       // if self.timer != nil { self.timer.invalidate() }
//
//       var timer = Timer(timeInterval: seconds, target: self, selector: Selector("timerDidFire"), userInfo: nil, repeats: true)
////        let timer = Timer.scheduledTimer(withTimeInterval: seconds
////             , repeats: true) { timer in
////        var counter = 0
////             if(self.imgArray.count == counter+1)
////               {
////                   counter = 0
////               }
////             self.imgView.image = UIImage(named:self.imgArray[counter])
////             self.lblTimer.text = "\(counter)"
////               counter += 1
////             }
//    }
    func  timerDidFire() {
        var counter = 0
         for i in 1...10{
                   let timer = Timer.scheduledTimer(withTimeInterval: 1.0
                   , repeats: true) { timer in

                   if(self.imgArray.count == counter+1)
                     {
                         counter = 0
                     }
                   self.imgView.image = UIImage(named:self.imgArray[counter])
                   self.lblTimer.text = "\(i)"
                     counter += 1
                   }
    }

}
}
