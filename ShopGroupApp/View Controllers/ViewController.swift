//
//  ViewController.swift
//  ShopGroupApp
//
//  Created by Clarke Williford on 3/30/22.
//

import UIKit

class ViewController: UIViewController {

    let testVC = TestViewController()
    let homePageVC = HomePageViewController()
    let itemInfoPageVC = ItemInfoPageViewController()
    let categoriesPageVC = CategoriesViewController()
    let cartPageVC = CartPageViewController()
    let signInPageVC = SignInPageViewController()
    let placeOrderPageVC = PlaceOrderPageViewController()
    let yourOrderPageVC = YourOrdersPageViewController()
    let returnsPagePageVC = ReturnsPageViewController()
    
    //let homePageVC = SecondViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    /**
            Setup sets up child views of the search bar parent view controller so that each child view has the search bar visible.
     */
    private func setup(){
        
        //adds child
        addChild(testVC)
        addChild(homePageVC)
        addChild(itemInfoPageVC)
        addChild(categoriesPageVC)
        addChild(cartPageVC)
        addChild(signInPageVC)
        addChild(placeOrderPageVC)
        addChild(yourOrderPageVC)
        addChild(returnsPagePageVC)
        
        //add actual view of controllers
        self.view.addSubview(testVC.view)
        self.view.addSubview(homePageVC.view)
        self.view.addSubview(itemInfoPageVC.view)
        self.view.addSubview(categoriesPageVC.view)
        self.view.addSubview(cartPageVC.view)
        self.view.addSubview(signInPageVC.view)
        self.view.addSubview(placeOrderPageVC.view)
        self.view.addSubview(yourOrderPageVC.view)
        self.view.addSubview(returnsPagePageVC.view)
        
        //checks if moved to parent
        testVC.didMove(toParent: self)
        homePageVC.didMove(toParent: self)
        itemInfoPageVC.didMove(toParent: self)
        categoriesPageVC.didMove(toParent: self)
        cartPageVC.didMove(toParent: self)
        signInPageVC.didMove(toParent: self)
        placeOrderPageVC.didMove(toParent: self)
        yourOrderPageVC.didMove(toParent: self)
        returnsPagePageVC.didMove(toParent: self)
        
        //sets frame for view controller views
        testVC.view.frame = self.view.bounds
        homePageVC.view.frame = self.view.bounds
        itemInfoPageVC.view.frame = self.view.bounds
        categoriesPageVC.view.frame = self.view.bounds
        cartPageVC.view.frame = self.view.bounds
        signInPageVC.view.frame = self.view.bounds
        placeOrderPageVC.view.frame = self.view.bounds
        yourOrderPageVC.view.frame = self.view.bounds
        returnsPagePageVC.view.frame = self.view.bounds
        
        //hide non-initial view controllers
        testVC.view.isHidden = true
        homePageVC.view.isHidden = true
        itemInfoPageVC.view.isHidden = true
        categoriesPageVC.view.isHidden = true
        cartPageVC.view.isHidden = true
        signInPageVC.view.isHidden = true
        placeOrderPageVC.view.isHidden = true
        yourOrderPageVC.view.isHidden = true
        returnsPagePageVC.view.isHidden = true
    }

    @IBAction func transition(_ sender: Any) {
        testVC.view.isHidden = false
    }
    
}

