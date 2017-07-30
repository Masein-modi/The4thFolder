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

    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var lblOutbut: UILabel!
    var btnsound : AVAudioPlayer!
    
    enum Operations :String {
        case Empty = ""
        case Devide = "/"
        case Multiply = "*"
        case Add = "+"
        case Subtract = "-"
    }
    
    var runningNum = ""
    var lftVar = ""
    var rwtVar = ""
    var currentOp = Operations.Empty
    var result = ""

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
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        runningNum = "\(sender.tag)"
        lblOutbut.text = runningNum
        playSound()
        resetBtn.isHidden = false
    }
    @IBAction func eqPressed(_ sender: UIButton){
        operateOperation(operation: currentOp)
 
    }
    @IBAction func adPressed(_ sender: UIButton){
        operateOperation(operation: .Add)
    }
    @IBAction func suPressed(_ sender: UIButton){
        operateOperation(operation: .Subtract)
    }
    @IBAction func dePressed(_ sender: UIButton){
        operateOperation(operation: .Devide)
    }
    @IBAction func muPressed(_ sender: UIButton){
        operateOperation(operation: .Multiply)
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        resetBtn.isHidden = true
        lblOutbut.text = "0"
        lftVar = ""
        currentOp = Operations.Empty
        runningNum = ""
    }
    

    func playSound(){
        if btnsound.isPlaying {
            btnsound.stop()
        }
        btnsound.play()
    }
    
    
    func operateOperation(operation : Operations){
        if currentOp != Operations.Empty{
            switch currentOp {
            case Operations.Add:
                result = "\(Double(lftVar)! + Double(runningNum)!)"
            case Operations.Subtract:
                result = "\(Double(lftVar)! - Double(runningNum)!)"
            case Operations.Devide:
                result = "\(Double(lftVar)! / Double(runningNum)!)"
            case Operations.Multiply:
                result = "\(Double(lftVar)! * Double(runningNum)!)"
            default : print("")
            }
            lftVar = result
            lblOutbut.text = lftVar
            currentOp = operation
            
        }else{
            lftVar = runningNum
            runningNum = ""
            currentOp = operation
        }
        resetBtn.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

