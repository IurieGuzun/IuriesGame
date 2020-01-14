//
//  FirstViewController.swift
//  IuriesGame
//
//  Created by Iurie Guzun on 2019-09-27.
//  Copyright © 2019 Iurie Guzun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    
    @IBAction private func playRock(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.userChoice = getUserShape(sender)
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction private func playPaper(_ sender: UIButton) {
       print("Paper from playPaper")
        performSegue(withIdentifier: "play", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("\(segue.identifier)")
        if
            segue.identifier == "play"
 {
    print("Paper or Scissors!!")
            let vc = segue.destination as! SecondViewController
    print("Before getting Shape")  
            vc.userChoice = getUserShape(sender as! UIButton)
        } else {
            print("No Scissors!")
        }
    }
    
    // The enum "Shape" represents a play or move
    private func getUserShape(_ sender: UIButton) -> Shape {
        // Titles are set to one of: Rock, Paper, or Scissors
        let shape = sender.title(for: UIControl.State())!
        print("shape=", shape)
        print( Shape(rawValue: shape)!)
        return Shape(rawValue: shape)!
    }
    
    
    
}
