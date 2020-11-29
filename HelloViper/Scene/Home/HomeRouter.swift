//
//  HomeRouter.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

class HomeRouter {
    
    internal var controller: HomeViewController!
    internal var presenter: HomePresenter!
    internal var interactor: HomeInteractor!
    
    init() {
        interactor = HomeInteractor()
        presenter = HomePresenter()
        controller = HomeViewController()
        
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = self
        presenter.view = controller
        controller.presenter = presenter
    }
}

extension HomeRouter: HomeRouterProtocol {}
