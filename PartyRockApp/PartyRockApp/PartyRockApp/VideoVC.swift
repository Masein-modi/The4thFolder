//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Masein Mody on 8/12/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var utubeWebView: UIWebView!
    private var _partyRock :PartyRock!
    var partyRock :PartyRock {
        get{
            return _partyRock
        }
        set{ _partyRock = newValue}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        utubeWebView.loadHTMLString(_partyRock.videoURL, baseURL: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
