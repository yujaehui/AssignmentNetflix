//
//  ViewController.swift
//  AssignmentNetflix
//
//  Created by Jaehui Yu on 12/26/23.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = .white
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.backgroundColor = .darkGray
        addVC()
    }
    
    private func addVC() {
        let firstVC = UINavigationController(rootViewController: HomeViewController())
        firstVC.view.backgroundColor = .black
        firstVC.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), selectedImage: UIImage(systemName: "house.fill"))
        
        let secondVC = UINavigationController(rootViewController: NewAndHotViewController())
        secondVC.view.backgroundColor = .black
        secondVC.tabBarItem = UITabBarItem(title: "NEW & HOT", image: UIImage(systemName: "play.rectangle.on.rectangle.fill"), selectedImage: UIImage(systemName: "play.rectangle.on.rectangle.fill"))
        
        let thirdVC = UINavigationController(rootViewController: SavedContentViewController())
        thirdVC.view.backgroundColor = .black
        thirdVC.tabBarItem = UITabBarItem(title: "저장된 콘텐츠 목록", image: UIImage(systemName: "arrow.down.circle"), selectedImage: UIImage(systemName: "arrow.down.circle"))
        
        self.viewControllers = [firstVC, secondVC, thirdVC]
    }


}

