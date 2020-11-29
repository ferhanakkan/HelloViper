//
//  HomeDetailProtocols.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

//MARK: Router
protocol HomeDetailRouterProtocol: class { }

//MARK: Presenter

protocol HomeDetailPresenterProtocol: class {
    var interactor: HomeDetailInteractorInputProtocol! { get set }
    func getContactData()
}

//MARK: Interactor

// Interactor -> Presenter
protocol HomeDetailInteractorOutputProtocol: class {
}

// Presenter -> Interactor

protocol HomeDetailInteractorInputProtocol: class {
    var presenter: HomeDetailInteractorOutputProtocol! { get set }
}

//MARK: View

protocol HomeDetailViewProtocol: class {
    var presenter: HomeDetailPresenterProtocol! { get set }
    func getContactData(contact: TestDatas)
}
