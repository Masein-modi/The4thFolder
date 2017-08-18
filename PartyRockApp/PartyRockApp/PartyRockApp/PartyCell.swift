//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Masein Mody on 8/12/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(partyRock : PartyRock){
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: data)
                }
            } catch  {
                //handle the error
                print("error dwnlding pic")
            }
        }
        
    }

}
