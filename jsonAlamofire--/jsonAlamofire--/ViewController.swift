//
//  ViewController.swift
//  jsonAlamofire--
//
//  Created by Rk on 11/05/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import Alamofire

struct Countries:Codable {
    let name: String
    let capital:String
}
class ViewController: UIViewController {
    
    var countries = [Countries]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        Alamofire.request(url!).responseJSON { (response) in
            let result = response.data
            do{
                self.countries = try JSONDecoder().decode([Countries].self, from:result!)
                for country in self.countries{
                    print(country.name," :: ", country.capital )
                }
                
            }
            catch let error{
                print(error)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

