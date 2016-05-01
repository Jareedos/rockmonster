//
//  ViewController.swift
//  rockMonster
//
//  Created by Jared Sobol on 4/22/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        var imgArray = [UIImage]()

        var x = 1
        while x <= 4 {
            let img = UIImage(named: "idle(\(x)).png")
            imgArray.append(img!)
            x += 1
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I Just touched the screen!")
    }
}
    




