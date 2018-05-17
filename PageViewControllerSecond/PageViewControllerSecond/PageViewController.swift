//
//  PageViewController.swift
//  PageViewControllerSecond
//
//  Created by Rk on 16/01/1940 Saka.
//  Copyright © 1940 Rk. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDataSource {
    
    
    let image:NSArray = ["1.jpg","2.jpg","3.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func nextVc(Index:Int) -> ViewController {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "story") as! ViewController
        next.imageFromNext = image[Index] as? String
        return next
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
