//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Rhett Somers on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "When The Genius Bar Needs Help, They Call You!",
                        "You Are Fantastic!",
                        "You've Got the Design Skills of Johnny Ive",
                        "Fabulous? That's You!"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = (Int.random(in: 0...totalNumberOfImages))
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")

    }
    
}

