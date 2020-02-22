//
//  Model.swift
//  Challenge
//
//  Created by Yasemin YEL on 21.02.2020.
//  Copyright © 2020 Sifa. All rights reserved.
//

import Foundation


class Person:Codable {
    
    var name:String
    var age:Int
    var email:String
    var gender:String
    var eyeColor:String
    var company:String
    var address:String
    var about:String
    
    

    init(name:String, age:Int, email:String, gender:String, eyeColor:String, company:String, address:String, about:String) {
    self.name = name
    self.age = age
    self.email = email
    self.gender = gender
    self.eyeColor = eyeColor
    self.company = company
    self.address = address
    self.about = about
}
    
    init() {
        self.name = "Clara Golden"
        self.age = 29
        self.email = "claragolden@anixang.com"
        self.gender = "female"
        self.eyeColor = "blue"
        self.company = "ABBNNN"
        self.address = "fsgfsgfg"
        self.about = "dsesdsdfsfsg"
    }
}
