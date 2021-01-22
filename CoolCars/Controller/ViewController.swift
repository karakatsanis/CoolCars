//
//  ViewController.swift
//  CoolCars
//
//  Created by Karakatsanis Georgios on 22/04/2020.
//  Copyright © 2020 Wrk.gr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var car: Car!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        car = Car()
    }
    
   
    @IBAction func unwindFromCarDetailVC(unwindSeque: UIStoryboardSegue) {
        
    }

    @IBAction func firstCarBtn(_ sender: Any) {
        
        
    
        car.carLabel = "Mercedes 600EL"
        car.carSpeed = "200"
        car.carFuel = "Gas"
        car.carPrice = "45.500"
        car.carImage = UIImage(named: "car1")
        
        
        performSegue(withIdentifier: "carDetailVCSeque", sender: self)
    }
    
    @IBAction func secondCarBtn(_ sender: Any) {
        
        
        
        car.carLabel = "Mercedes 900EL"
        car.carSpeed = "300"
        car.carFuel = "Unl"
        car.carPrice = "75.500"
        car.carImage = UIImage(named: "car2")
        
        
        performSegue(withIdentifier: "carDetailVCSeque", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let carDetailVC = segue.destination as? CarDetailVC {
            carDetailVC.car = car
        }
    }
    
}

