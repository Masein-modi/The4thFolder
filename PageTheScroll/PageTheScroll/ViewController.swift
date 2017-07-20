//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Masein Mody on 7/18/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageview = UIImageView(image: image)
            images.append(imageview)
            
            var newX : CGFloat = 0.0
            newX = view.frame.midX + view.frame.width * CGFloat(x)
            scrollView.addSubview(imageview)
            imageview.frame = CGRect(x: newX - 75, y: view.frame.size.height/2 - 75, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false  // video 44 2 daqiqebakhar
        
        scrollView.contentSize = CGSize(width: view.frame.size.width * 3, height: view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

