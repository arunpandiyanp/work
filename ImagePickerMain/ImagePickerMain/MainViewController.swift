//
//  MainViewController.swift
//  ImagePickerMain
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageOutlet: UIImageView!
    
    //creating a delegate object
    let imgDel = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //calling that delegate itself
        imgDel.delegate = self

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func onOpenClick(_ sender: Any) {
        imgDel.allowsEditing = false
        imgDel.sourceType = .photoLibrary
        self.present(imgDel, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imgOne:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageOutlet.image = imgOne
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
