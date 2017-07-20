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
   // @IBOutlet weak var TheMasterScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(scrollView.frame.size.width)
        print(scrollView.frame.midX)
        print(view.frame.midX)
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageview = UIImageView(image: image)
            images.append(imageview)
            
            var newX : CGFloat = 0.0
            newX = scrollView.frame.midX + scrollView.frame.size.width * CGFloat(x)
            print(newX)
            scrollView.addSubview(imageview)
            imageview.frame = CGRect(x: newX - 140, y: scrollView.frame.size.height/2 - 75, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false  // video 44 2 daqiqebakhar
        scrollView.backgroundColor = UIColor.brown
        
        scrollView.contentSize = CGSize(width: view.frame.size.width * 3, height: view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

