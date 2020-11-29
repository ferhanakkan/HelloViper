//
//  HomePresenter.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

class HomePresenter {
    var view: HomeViewProtocol!
    var interactor: HomeInteractorInputProtocol!
    var router: HomeRouterProtocol!
}

extension HomePresenter: HomePresenterProtocol {
    
    func showDetailPage(contact: TestDatas) {
        router.showDetailPage(contact: contact)
    }
    
    func getContacts() {
        interactor.getContactsFromService()
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
    func gotContacts(_ contacts: [TestDatas]) {
        view.showContacts(contacts)
    }
}

