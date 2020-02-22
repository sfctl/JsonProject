//
//  PersonViewModel.swift
//  Challenge
//
//  Created by Yasemin YEL on 21.02.2020.
//  Copyright © 2020 Sifa. All rights reserved.
//

import Foundation
class PersonViewModel {
    
    var PersonModel = Person()
    
    var nameString:String {
        return String(PersonModel.name)
        
    }
    
    var emailString:String {
         return String(PersonModel.email)
         
     }
    
    var ageString:String {
        return String(PersonModel.age)
         
     }
    
       var adressString:String {
          return String(PersonModel.address)
           
       }
       
       var genderString:String {
          return String(PersonModel.gender)
           
       }
       
       var aboutString:String {
          return String(PersonModel.about)
           
       }
       
       var eyeColorString:String {
          return String(PersonModel.eyeColor)
           
       }
       
       var companyString:String {
          return String(PersonModel.company)
           
       }
       
       
}
