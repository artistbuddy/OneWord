//
//  AppCoordinator.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class AppCoordinator {
    // MARK:- RootViewCoordinator
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController {
        return self.navigationController
    }
    
    // MARK:- Properties
    let window: UIWindow
    private lazy var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        return navigationController
    }()
    
    // MARK:- Initialization
    init(window: UIWindow) {
        self.window = window
        
        setupWindow()
    }
    
    private func setupWindow() {
        self.window.rootViewController = self.rootViewController
        self.window.makeKeyAndVisible()
    }
    
    // MARK:- Scenes
    func start() {
        showHelloWorldScene()
    }
    
    func showHelloWorldScene() {
        let assembler = HelloWorldSceneAssembler()
        let vc: HelloWorldViewController = assembler.assemble()
        
        self.navigationController.viewControllers = [vc]
    }
}
