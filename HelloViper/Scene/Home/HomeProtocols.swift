//
//  HomeProtocols.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

//MARK: Router
protocol HomeRouterProtocol: class { }

//MARK: Presenter

protocol HomePresenterProtocol: class {
    var interactor: HomeInteractorInputProtocol! { get set }
    func getContacts()
}

//MARK: Interactor

// Interactor -> Presenter
protocol HomeInteractorOutputProtocol: class {
    func gotContacts(_ contacts: [TestDatas])
}

// Presenter -> Interactor

protocol HomeInteractorInputProtocol: class {
    var presenter: HomeInteractorOutputProtocol! { get set }
    func getContactsFromService()
}

//MARK: View

protocol HomeViewProtocol: class {
    var presenter: HomePresenterProtocol! { get set }
    func showContacts(_ contacts: [TestDatas])
}
