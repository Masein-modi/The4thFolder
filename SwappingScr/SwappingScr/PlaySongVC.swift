//
//  PlaySongVC.swift
//  SwappingScr
//
//  Created by Masein Mody on 7/20/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {
    
    @IBOutlet weak var SongLbl: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    
    private var _selectedSong : String!
    var selectedSong:String {
        get {
            return _selectedSong
        }set {
            _selectedSong = newValue
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkGray
        SongLbl.text = _selectedSong

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
