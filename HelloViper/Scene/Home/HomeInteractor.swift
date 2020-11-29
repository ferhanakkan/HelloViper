//
//  HomeInteractor.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import Foundation

class HomeInteractor {
    public var present: HomeInteractorOutputProtocol!
}


extension HomeInteractor: HomeInteractorInputProtocol {
    var presenter: HomeInteractorOutputProtocol! 
}
