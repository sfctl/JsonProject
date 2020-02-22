//
//  ViewController.swift
//  Challenge
//
//  Created by Yasemin YEL on 21.02.2020.
//  Copyright © 2020 Sifa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var basliklar = [Person]()
    var chosenPerson : Person?
    
    @IBOutlet weak var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        downloadJSON {
            self.tableView.reloadData()
        }
        
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
            return basliklar.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! ListTableViewCell
            cell.cellName.text = "\(basliklar[indexPath.row].name)"
            cell.cellName.textColor = UIColor.blue
            cell.cellEmail.text = "\(basliklar[indexPath.row].email)"
            cell.cellEmail.textColor = UIColor.orange
            cell.cellGender.text = "\(basliklar[indexPath.row].gender)"
            cell.cellGender.textColor = UIColor.brown
            cell.cellAge.text = "\(basliklar[indexPath.row].age)"
            cell.cellAge.textColor = UIColor.green
                 return cell
        }
        
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           chosenPerson = basliklar[indexPath.row]
             performSegue(withIdentifier: "segue", sender: self)

            }
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "segue" {
          
          let destinationVC = segue.destination as! SecondViewController
          destinationVC.person = chosenPerson
      }
    
    }
        
    
    func downloadJSON(completed: @escaping () -> ())  {
     
        let url = URL(string:"http://www.json-generator.com/api/json/get/cfUZtBFHVK?indent=2")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {

                do {
                    self.basliklar = try JSONDecoder().decode([Person].self, from: data!)
                    
                    DispatchQueue.main.async {
                        completed()
                    }
                } catch{
                    print("json ERROR")
                }
        }
        
        }.resume()
    
    
}

}
