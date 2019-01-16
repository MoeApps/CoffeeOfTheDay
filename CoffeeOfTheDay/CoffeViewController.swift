//
//  CoffeViewController.swift
//  CoffeeOfTheDay
//
//  Created by Mohamed Alaa on 1/9/19.
//  Copyright © 2019 Mohamed Alaa. All rights reserved.
//

import UIKit

class CoffeViewController: UIViewController {
   
    @IBOutlet weak var coffees: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.randomCoffee()
    }
    
    func randomCoffee() {
        
        let coffeesArray: [String] = ["Caffè Americano", "Café Latte", "Cappuccino", "Espresso", "Flat White", "Long Black", "Macchiato", "Mochaccino", "Irish Coffee", "Vienna", "Affogato"]
        let index = Int(arc4random_uniform(UInt32(coffeesArray.count-1)))
        
        let coffeeOfTheDay = coffeesArray[index]
        coffees.text = coffeeOfTheDay
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
