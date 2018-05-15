//
//  ViewController.swift
//  ImagePicker_Main
//
//  Created by Rk on 12/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var imageOutlet: UIImageView!
    let imaGe = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        //creating delegate object
        imaGe.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonClickImagePick(_ sender: UIButton) {
        imaGe.allowsEditing = false
        imaGe.sourceType = .photoLibrary
        present(imaGe, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imagePicked:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageOutlet.image = imagePicked
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}

