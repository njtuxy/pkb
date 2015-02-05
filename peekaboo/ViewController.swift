//
//  ViewController.swift
//  peekaboo
//
//  Created by Yan Xia on 2/2/15.
//  Copyright (c) 2015 Yan Xia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPageControl: UIPageControl!
    
    @IBOutlet weak var myColorView: UIView!
    
    let myColors = [
        UIColor.blackColor(),
        UIColor.grayColor(),
        UIColor.redColor(),
        UIColor.greenColor(),
        UIColor.blueColor(),
        UIColor.cyanColor(),
        UIColor.yellowColor(),
        UIColor.magentaColor(),
        UIColor.orangeColor(),
        UIColor.purpleColor()
    ]
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configMyPageControl()
        pageControlValueDidChange()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configMyPageControl(){
        myPageControl.numberOfPages = myColors.count
        myPageControl.currentPage = 0
        myPageControl.tintColor = UIColor.blueColor()
        myPageControl.pageIndicatorTintColor = UIColor.greenColor()
        myPageControl.currentPageIndicatorTintColor = UIColor.purpleColor()
        myPageControl.addTarget(self, action: "pageControlValueDidChange", forControlEvents: .ValueChanged)
    }
    
    func pageControlValueDidChange() {
        NSLog("The page control changed its current page to \(myPageControl.currentPage).")
        myColorView.backgroundColor = myColors[myPageControl.currentPage]
    }


}

