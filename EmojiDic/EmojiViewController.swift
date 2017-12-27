//
//  EmojiViewController.swift
//  EmojiDic
//
//  Created by Ilie Cristian on 27/12/2017.
//  Copyright © 2017 Ilie Cristian. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        emojiLabel.text = emoji
        if emoji == "😄"
        { definitionLabel.text = "It's a smiley face!" }
        if emoji == "🚗"
        { definitionLabel.text = "It's a nice car!" }
        if emoji == "🧐"
        { definitionLabel.text = "It's a kind man!" }
        if emoji == "🌧"
        { definitionLabel.text = "It's rain!" }
        if emoji == "🐶"
        { definitionLabel.text = "It's a dog!" }
        if emoji == "💩"
        { definitionLabel.text = "It's a pou!" }
        if emoji == "👌🏻"
        { definitionLabel.text = "It's ok!" }
        
        
        
    }

 
}
