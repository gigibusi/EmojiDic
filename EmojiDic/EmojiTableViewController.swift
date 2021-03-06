//
//  EmojiTableViewController.swift
//  EmojiDic
//
//  Created by Ilie Cristian on 27/12/2017.
//  Copyright © 2017 Ilie Cristian. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
var emojis = ["😄","🧐","🐶","🌧","💩","🚗","👌🏻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSague", sender:emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let emojiDefVC =   segue.destination as! EmojiViewController
        emojiDefVC.emoji = sender as! String
    }
    
}
