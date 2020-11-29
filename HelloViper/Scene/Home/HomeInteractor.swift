//
//  HomeInteractor.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

class HomeInteractor {
    var presenter: HomeInteractorOutputProtocol!
}


extension HomeInteractor: HomeInteractorInputProtocol {
    func getContactsFromService() {
        var contactsArray: [TestDatas] = []
        
        contactsArray.append(TestDatas(name: "Ferhan", phoneNumber: 123123123))
        contactsArray.append(TestDatas(name: "Fethi", phoneNumber: 312312321))
        contactsArray.append(TestDatas(name: "Salih", phoneNumber: 4142124))
        contactsArray.append(TestDatas(name: "Semiha", phoneNumber: 9457433))
        
        presenter.gotContacts(contactsArray)
    }
}
