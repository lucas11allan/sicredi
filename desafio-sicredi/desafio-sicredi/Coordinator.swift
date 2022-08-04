//
//  Coordinator.swift
//  desafio-sicredi
//
//  Created by user223636 on 8/3/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
    
    func start()
}
