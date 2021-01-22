//
//  CarDetailVC.swift
//  CoolCars
//
//  Created by Karakatsanis Georgios on 23/04/2020.
//  Copyright © 2020 Wrk.gr. All rights reserved.
//

import UIKit

class CarDetailVC: UIViewController {
    
    var car: Car!
    
    @IBOutlet weak var carFuelNew: UILabel!
    @IBOutlet weak var carBrandLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carSpeed: UILabel!
    @IBOutlet weak var carPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        carBrandLabel.text = car.carLabel
        carSpeed.text = car.carSpeed
        carFuelNew.text = car.carFuel
        carPrice.text = car.carPrice
        carImage.image = car.carImage
        
        
        
        
      

        // Do any additional setup after loading the view.
    }
    

    
    
   

}
