//
//  ViewController.swift
//  imagefromURLusingsession
//
//  Created by Rk on 12/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageUrl = URL(fileURLWithPath: "http://nysurfsoccer.org/wp-content/uploads/2017/03/IMG.png")
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()        
        let session = URLSession(configuration: .default)
        let imagefromURL = session.dataTask(with: imageUrl) { (data, Response, error) in
            if let e = error{
                print(e)
            }
            else{
                if (Response as? HTTPURLResponse) != nil{
                    if let imageData = data{
                    let img = UIImage(data: imageData)
                    self.imageView.image = img}
                    else{
                        print("image file corrupted")
                    }
                }
                else{
                    print("server error")
                }
            }
        }
        imagefromURL.resume()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

