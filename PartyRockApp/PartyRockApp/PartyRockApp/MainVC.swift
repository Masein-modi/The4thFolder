//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Masein Mody on 8/12/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var  partyrocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
          let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/T0ivG4Ew-Lk/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: " Me enamore")
         let p2 = PartyRock(imageURL: "http://farhangno.org/wp-content/uploads/photo_2016-10-07_03-41-24.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
         let p3 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        partyrocks.append(p1)
        partyrocks.append(p2)
        partyrocks.append(p3)
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       if let cell = tableView.dequeueReusableCell(withIdentifier: "partyCell", for: indexPath) as? PartyCell {
          
            let partyRock = partyrocks[indexPath.row]

            cell.updateUI(partyRock: partyRock)
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyrocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyrocks[indexPath.row]
        performSegue(withIdentifier: "toVideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC{
            if let video = sender as? PartyRock{
                destination.partyRock = video
            }
        }
    }

}

