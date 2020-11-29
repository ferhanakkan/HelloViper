//
//  HomeDetailRouter.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

class HomeDetailRouter {
    
    internal var controller: HomeDetailViewController!
    internal var presenter: HomeDetailPresenter!
    internal var interactor: HomeDetailInteractor!
    
    init(contactData: TestDatas? = nil) {
        interactor = HomeDetailInteractor()
        presenter = HomeDetailPresenter()
        controller = HomeDetailViewController()
        
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = self
        presenter.view = controller
        controller.presenter = presenter
        presenter.contactData = contactData
    }
}

extension HomeDetailRouter: HomeDetailRouterProtocol {}
