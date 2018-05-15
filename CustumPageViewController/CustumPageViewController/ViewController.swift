//
//  ViewController.swift
//  CustumPageViewController
//
//  Created by Srishti Innovative on 19/01/18.
//  Copyright © 2018 sics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pageVC: UIPageViewController!
    var titleArray = ["This is The App Guruz", "This is Table Tennis 3D", "This is Hide Secrets"];
    var imgArray = ["img_01", "img_02", "img_03"]
    
    @IBOutlet var segControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segControl.tintColor = UIColor.darkGray
        
        self.pageVC = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController")as! PageViewController
        let pageContent: PageContentViewController = getViewController(identifier: "PageContentViewController") as! PageContentViewController
        self.pageVC.setViewControllers([pageContent], direction: .reverse, animated: true, completion: nil)
        frameOfPageViewController()

    }

    @IBAction func startAction(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{

            self.pageVC = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController")as! PageViewController
            
            let pageContent: PageContentViewController = getViewController(identifier: "PageContentViewController") as! PageContentViewController
            
            self.pageVC.setViewControllers([pageContent], direction: .reverse, animated: true, completion: nil)
            
            frameOfPageViewController()
            
        }else if sender.selectedSegmentIndex == 1{
            
            self.pageVC = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController")as! PageViewController
         
            let pageContent: SecondViewController = getViewController(identifier: "SecondViewController") as! SecondViewController
            
            self.pageVC.setViewControllers([pageContent], direction: .reverse, animated: true, completion: nil)
            
            frameOfPageViewController()
        }else{
            
            self.pageVC = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController")as! PageViewController
            
            let pageContent: ThirdViewController = getViewController(identifier: "ThirdViewController") as! ThirdViewController
            
            self.pageVC.setViewControllers([pageContent], direction: .reverse, animated: true, completion: nil)
            
            frameOfPageViewController()
        }
    }
    
//   Function to set frame of pageViewController
    func frameOfPageViewController(){
        
        self.pageVC.view.frame = CGRect(x: 0, y:180, width: self.view.frame.width, height: self.view.frame.height - 180)
        
        self.addChildViewController(pageVC)
        self.view.addSubview(pageVC.view)
        self.pageVC.didMove(toParentViewController: self)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    Call Next viewController to frame
    func getViewController(identifier: String) -> UIViewController{
        
        let pageContentVC = self.storyboard?.instantiateViewController(withIdentifier: identifier)
        return pageContentVC!
    }
    
}

