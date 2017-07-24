//
//  ViewController.swift
//  Calculator
//
//  Created by Masein Mody on 7/20/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnsound : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do{
            try btnsound = AVAudioPlayer(contentsOf: soundURL)
            btnsound.prepareToPlay()
        }catch let err as NSError{
            print(err.debugDescription)
        }

    }
    
    @IBAction func numberPressed(sender : UIButton){
        playSound()
    }

    func playSound(){
        if btnsound.isPlaying {
            btnsound.stop()
        }
        btnsound.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

