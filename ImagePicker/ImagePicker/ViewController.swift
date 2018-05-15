//
//  ViewController.swift
//  ImagePicker
//
//  Created by Rk on 08/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBOutlet weak var imagePicked: UIImageView!
    var picker = UIImagePickerController()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        picker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonSelect(_ sender: Any)
    {
        let alert:UIAlertController = UIAlertController(title: "choose Image ", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
//        let cameraAction = UIAlertAction(title: "Camera", style: UIAlertActionStyle.default)
//        {
//            UIAlertAction in
//            self.OpenCamera()
//        }
        let galleryAction = UIAlertAction(title: "Gallery", style: UIAlertActionStyle.default)
        {
            UIAlertAction in
            self.Opengallery()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
            (alert : UIAlertAction!) in
        }
        //self.picker = UIImagePickerController()
        
        //self.picker.delegate = self as! UIImagePickerControllerDelegate
        //alert.addAction(cameraAction)
        alert.addAction(galleryAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
//    func OpenCamera()
//    {
//        if UIImagePickerController .isSourceTypeAvailable(.camera)
//        {
//            picker.delegate = self
//            picker.sourceType = .camera
//            self.present(picker, animated: true, completion: nil)
//        }
//        else
//        {
//            let controller = UIAlertController(title: "Error", message: "Camera not Found", preferredStyle: .alert)
//            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//            //let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//
//            controller.addAction(ok)
//            self.present(controller, animated: true, completion: nil)
//        }
//
//    }
    
    func Opengallery()
    {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {

            picker.delegate = self
            picker.sourceType = .photoLibrary
            picker.allowsEditing = false
            
            print("in gallery")
            self.present(picker, animated: true, completion: nil)
        }
        else
        {
            let controller = UIAlertController(title: "Error", message: "Gallery not Found", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            controller.addAction(ok)
            self.present(controller, animated: true, completion: nil)
        }
    }
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
                    print("in gallery picked")
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            //imagepicked is our outlet for that image view
            //imagePicked.image = image

            print("image got")
            imagePicked.image = image
            
        }
        else
        {
            print("Something went wrong")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }

}

