//
//  ViewController.swift
//  test2
//
//  Created by Rk on 19/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    var t = Timer()
    var flag = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progres: UIProgressView!
    @IBOutlet weak var imgoutlet: UIImageView!
    let img = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        img.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onClick(_ sender: Any) {
        img.allowsEditing = true
        img.sourceType = .photoLibrary
        present(img, animated: true, completion: nil)

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imgPic:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imgoutlet.image = imgPic
        self.dismiss(animated: true, completion: nil)
        run()
    }
    
    func run(){
        t = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(mun), userInfo: nil, repeats: true)
    }

    @objc func mun(){
            self.progres.progress += 0.1
            label.text = String(progres.progress*100)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

