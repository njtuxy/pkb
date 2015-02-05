//
//  ViewController.swift
//  peekaboo
//
//  Created by Yan Xia on 2/2/15.
//  Copyright (c) 2015 Yan Xia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


//    int(){
//        index = 0
//    }

    @IBOutlet weak var myPageControl: UIPageControl!
    
    @IBOutlet weak var myColorView: UIView!
    
    var index: NSInteger = 0;
    
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
        configMyPageControl(0)
        pageControlValueDidChange()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configMyPageControl(index: NSInteger){
        myPageControl.numberOfPages = myColors.count
        myPageControl.currentPage = index
        myPageControl.tintColor = UIColor.blueColor()
        myPageControl.pageIndicatorTintColor = UIColor.greenColor()
        myPageControl.currentPageIndicatorTintColor = UIColor.purpleColor()
        myPageControl.addTarget(self, action: "pageControlValueDidChange", forControlEvents: .ValueChanged)
    }
    
    func pageControlValueDidChange() {
        NSLog("The page control changed its current page to \(myPageControl.currentPage).")
        myColorView.backgroundColor = myColors[myPageControl.currentPage]
    }


    @IBAction func myButton(){
        index++;
        configMyPageControl(index)
        pageControlValueDidChange()
    }
}

