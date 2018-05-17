//
//  PageViewController.swift
//  PageViewController First
//
//  Created by Rk on 23/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDataSource {
   

    let labelFor = ["one","two","three"]
    let image:NSArray = ["1.jpg","2.jpg","3.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
//        self.setViewControllers([nextViewC(index: 0)], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
        self.setViewControllers([nextViewC(index: 0)], direction: UIPageViewControllerNavigationDirection.forward
            , animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let page = viewController as! ViewController
        var ind = page.pageIndex
        if ind == 0 {
            return nil
        }
        else{
             ind -= 1
        }
        return nextViewC(index: ind)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let page = viewController as! ViewController
        var ind = page.pageIndex
        if (ind == NSNotFound)
        {
            return nil
        }
        
        ind += 1
        if ind == labelFor.count{
            return nil
        }
        return nextViewC(index: ind)
        
    }
    func nextViewC(index:Int)->UIViewController {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "story") as! ViewController
        next.imagge = image[index] as! String
        next.pageName = labelFor[index]
        next.pageIndex = index
        return next
        
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
