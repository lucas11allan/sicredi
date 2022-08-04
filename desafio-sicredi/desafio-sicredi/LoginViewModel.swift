//
//  LoginViewModel.swift
//  desafio-sicredi
//
//  Created by user223636 on 8/3/22.
//

import Foundation

final class LoginViewModel {

    private let coordinator: AppCoordinator
    
    init(coordinator: AppCoordinator) {
        self.coordinator = coordinator
    }

    public var password: String = ""
    public var login: String = ""

    public func presentEmployeesScreen() {
        if password == "admin" && login == "admin" {
            //coordinator.showEmployeeScreen()
        }
    }
}
