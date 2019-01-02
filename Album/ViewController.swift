//
//  ViewController.swift
//  Album
//
//  Created by СЕРГЕЙ on 11/11/2018.
//  Copyright © 2018 СЕРГЕЙ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var  numberImage: Int = 0
    var  numberImage1: Int = 0
    var  numberPandaImage: Int = 0
    var previos: Int = 0
    var next1: Int = 0
    @IBOutlet weak var pandaImageView: UIImageView!
    @IBOutlet weak var pandaImageView1: UIImageView!
    
    
    
    @IBOutlet weak var labelPanda: UIImageView!
    
    
    @IBOutlet weak var previosButton: ShakeButton!
    
    
    @IBOutlet weak var nextButton: ShakeButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
       updatePandaUI()
        //updateFlagUI()
    }
    let image = 0
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        previosButton.layer.cornerRadius = previosButton.frame.height / 8
        nextButton.layer.cornerRadius = nextButton.frame.height / 8
        
    }

    @IBAction func previosButton(_ sender: ShakeButton) {
         numberImage1 = numberImage
        sender.shake()
        
        //if next1 == 1{
            numberImage -= 1
          //  next1 = 0
          //  previos = 1}
       // else {
      //  numberImage -= 1
        //    previos = 1}
        //print("next1 = \(next1)")
       // print("previos = \(previos)")
        print(numberImage)
        
        //updateUI()
        //updateUI1()
        if numberImage >= -1 && numberImage <= 30{
            
        switch numberImage {
        case 29: ((numberPandaImage = 2), (print("case0")))
        case 0...28: ((numberPandaImage = 1), (print("case1")))
        case -1:  ((numberImage = 30), (numberPandaImage = 0))
            default: break}
        }
        else{
                numberImage = 30
        }
        print("numberImage = \(numberImage)")
        // numberImage -= 1
        UIView.transition(from: pandaImageView1, to: pandaImageView!, duration: 0.5, options: [.curveEaseOut, .transitionCurlDown, .showHideTransitionViews])
         print("numberImagePast = \(numberImage)")
        updateUI()
        updateUI1()
        updatePandaUI()
        
    }
    
    
    @IBAction func nextButton(_ sender: ShakeButton) {
      numberImage1 = numberImage
        
        
        sender.shake()
       // if previos == 1{
            numberImage += 1
          //  previos = 0
           // next1 = 1  }else
        //{ numberImage += 1
         //    next1 = 1 }
        
       // print("next1 = \(next1)")
      //  print("previos = \(previos)")
        // updateUI()
        print(numberImage)
        
        if numberImage >= 0  && numberImage <= 30 {
        switch numberImage {
        case 0: (numberPandaImage = 0)
        case 1...29: (numberPandaImage = 1)
        case 30:  (numberPandaImage = 2)
        default: break
            
            }
        }else {
                numberImage = 0
            
        }
             print("numberImageBefore = \(numberImage)")
        UIView.transition(from: pandaImageView1, to: pandaImageView!, duration: 0.5, options : [.curveEaseOut, .transitionCurlUp, .showHideTransitionViews])
            
         print("numberImage = \(numberImage)")
        updateUI()
        updateUI1()
        updatePandaUI()
    
    }
    
    func updateUI(){
        let imageName = "\(numberImage)"
        let image = UIImage(named: imageName)
        pandaImageView.image = image
    }
    
    func updateUI1(){
        let imageName1 = "\(numberImage1)"
        let image1 = UIImage(named: imageName1)
        pandaImageView1.image = image1
    }
   
    
    func updatePandaUI(){
        let imagePandaName = "Panda\(numberPandaImage)"
        let image = UIImage(named: imagePandaName)
        labelPanda.image = image    }
    
    
}


