//
//  ViewController.swift
//  rockMonster
//
//  Created by Jared Sobol on 4/22/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I Just touched the screen!")
    }
}
    




