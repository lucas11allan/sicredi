//
//  AppCoordinator.swift
//  desafio-sicredi
//
//  Created by user223636 on 8/3/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    init(navCon : UINavigationController) {
        self.navigationController = navCon
    }
    
    func start() {
        // The first time this coordinator started, is to launch login page.
        goToLoginPage()
    }
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    func goToLoginPage(){
        // Instantiate LoginViewModel
        let loginViewModel = LoginViewModel(coordinator: self)
        // Instantiate LoginViewController
        let loginViewController = LoginViewController(viewModel: loginViewModel)
        
        navigationController.pushViewController(loginViewController, animated: true)
    }
    
}
