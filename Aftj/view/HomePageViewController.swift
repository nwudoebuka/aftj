
import UIKit
//
//  PageViewController.swift
//  Househunt
//
//  Created by Nwudo Ebuka on 1/17/19.
//  Copyright © 2019 Nwudo Ebuka. All rights reserved.
//


protocol  Islide {
    func slidedTo(index:Int)
}

class HomePageViewController: UIPageViewController ,UIPageViewControllerDelegate,UIPageViewControllerDataSource{
  
    private var currentPageIndex: Int!
    var slidedelegate:Islide!
    
    lazy var orderedViewControllers: [UIViewController] = {
        
        return [self.newVC(viewController: "onb1"),self.newVC(viewController: "onb2"),self.newVC(viewController: "onb3")]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.currentPageIndex = 0
       // displayPageForIndex(index: 2)
       
          // slidedelegate.slidedTo(index: 0)
        self.dataSource = self
        if let firstViewController = orderedViewControllers.first {
            
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newVC(viewController: String)->UIViewController{
        
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController)->UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController)else{
            return nil
        }
        currentPageIndex = viewControllerIndex
       slidedelegate.slidedTo(index: viewControllerIndex)
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex  >= 0 else{
            //returning nil if we try to slide back on the first slide
            return nil
        }
        guard orderedViewControllers.count > previousIndex else{
            
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController)-> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController)else{
            return nil
        }
        currentPageIndex = viewControllerIndex
      slidedelegate.slidedTo(index: viewControllerIndex)
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else{
            
            //returning nill if we try to slide to next on the last slide
            return nil
        }
        guard orderedViewControllers.count > nextIndex else{
            
            return nil
        }
        
        return orderedViewControllers[nextIndex]
        
    }
    
    
    
    func displayPageForIndex(index: Int, animated: Bool = true) {
        assert(index >= 0 && index < self.orderedViewControllers.count, "Error: Attempting to display a page for an out of bounds index")
        
        // nop if index == self.currentPageIndex
        //        if self.currentPageIndex == index { return }
        //
        //        if index < self.currentPageIndex {
        //            self.setViewControllers([self.orderedViewControllers[index]], direction: .reverse, animated: true, completion: nil)
        //        } else if index > self.currentPageIndex {
        //            self.setViewControllers([self.orderedViewControllers[index]], direction: .forward, animated: true, completion: nil)
        //        }
        
        self.setViewControllers([self.orderedViewControllers[index]], direction: .forward, animated: true, completion: nil)
        
        self.currentPageIndex = index
    }
    
    
    func displayBackPageForIndex(index: Int, animated: Bool = false) {
        assert(index >= 0 && index < self.orderedViewControllers.count, "Error: Attempting to display a page for an out of bounds index")
        
        // nop if index == self.currentPageIndex
        //        if self.currentPageIndex == index { return }
        //
        //        if index < self.currentPageIndex {
        //            self.setViewControllers([self.orderedViewControllers[index]], direction: .reverse, animated: true, completion: nil)
        //        } else if index > self.currentPageIndex {
        //            self.setViewControllers([self.orderedViewControllers[index]], direction: .forward, animated: true, completion: nil)
        //        }
        
        self.setViewControllers([self.orderedViewControllers[index]], direction: .reverse, animated: true, completion: nil)
        
        self.currentPageIndex = index
        
    }
    
    func nextClick(){
        
    }
    
    func prevClick(){
        
        
    }
    
//    func doNext(_ index: Int) {
//        print("current index is \(currentPageIndex)")
//        if currentPageIndex + 1 == 3{
//           let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "landingVC") as! LandingViewController
//                                                    vc.modalPresentationStyle = .overCurrentContext
//                                                      self.present(vc, animated: false, completion: nil)
//
//
//            return
//        }
//        displayPageForIndex(index: currentPageIndex + 1)
//        slidedelegate.slidedTo(index: currentPageIndex)
//      }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let segDestination = segue.destination as? OnboardingViewController{
//            slidedelegate = segDestination
//        }
//    }
}




