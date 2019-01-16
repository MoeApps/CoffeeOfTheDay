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
       
    func randomCoffee() {
        
        let coffees: [String] = ["Caffè Americano", "Café Latte", "Cappuccino", "Espresso", "Flat White", "Long Black", "Macchiato", "Mochaccino", "Irish Coffee", "Vienna", "Affogato"]
        let index = Int(arc4random_uniform(UInt32(coffees.count-1)))
        
        print(coffees[index])
    }
    
    }
}
