//
//  HomeDetailPresenter.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

class HomeDetailPresenter {
    var view: HomeDetailViewProtocol!
    var interactor: HomeDetailInteractorInputProtocol!
    var router: HomeDetailRouterProtocol!
    
    var contactData: TestDatas?
}

extension HomeDetailPresenter: HomeDetailPresenterProtocol {
    func getContactData() {
        guard let controledData = contactData else { return }
        view.getContactData(contact: controledData)
    }
}

extension HomeDetailPresenter: HomeDetailInteractorOutputProtocol {

}
