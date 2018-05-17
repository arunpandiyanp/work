//
//  PageViewController.swift
//  SamplePageViewController
//
//  Created by Srishti Innovative on 19/01/18.
//  Copyright © 2018 sics. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    var titleArray = ["This", "This is", "This is Hidden"];
    var imgArray = ["img_01", "img_02", "img_03"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.dataSource = self
        self.setViewControllers([getViewControllerAtIndex(index: 0)], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let pageContent = viewController as! ViewController
        var indx = pageContent.pageIndex
        if indx == 0 || indx == NSNotFound{
            return nil
        }
        indx -= 1
       return getViewControllerAtIndex(index: indx)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let pageContent = viewController as! ViewController
        var indx = pageContent.pageIndex
        
        if indx == NSNotFound {
            return nil
        }
        
        indx += 1
        
        if indx == titleArray.count{
            return nil
        }

        return getViewControllerAtIndex(index: indx)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func getViewControllerAtIndex(index: NSInteger) -> ViewController{
        let pageContentVC = self.storyboard?.instantiateViewController(withIdentifier: "VC")as! ViewController
        pageContentVC.strTitle = titleArray[index]
        pageContentVC.strPhotoName  = imgArray[index]
        pageContentVC.pageIndex = index
        return pageContentVC
    }

}
