//
//  SecondViewController.swift
//  Challenge
//
//  Created by Yasemin YEL on 22.02.2020.
//  Copyright © 2020 Sifa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var companyLbl: UILabel!
    @IBOutlet weak var eyecolorLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var aboutLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    var person:Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = person?.name
        emailLbl.text = person?.email
        genderLbl.text = person?.gender
        eyecolorLbl.text = person?.eyeColor
        companyLbl.text = person?.company
        addressLbl.text = person?.address
        aboutLbl.text = person?.about
        ageLbl.text = "\(String(describing: person!.age))"
        
        
        
        
      
        
    }
    


}
