//
//  ViewController.swift
//  dicepgm
//
//  Created by Angel Babu on 18/08/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var score = 0
    var images = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        
        let a = Int.random(in: 0...5)
        let b = Int.random(in: 0...5)
        
        img1.image = UIImage(named : images[a])
        img2.image = UIImage(named : images[b])
    
        label.text = String("score\(score)")
        if(img1.image == img2.image){
            score+=1
        }
//
        
    }
    
}

