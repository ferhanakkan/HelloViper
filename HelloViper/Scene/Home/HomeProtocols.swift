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
}

//MARK: Interactor

// Interactor -> Presenter
public protocol HomeInteractorOutputProtocol: class { }

// Presenter -> Interactor

protocol HomeInteractorInputProtocol: class {
    var presenter: HomeInteractorOutputProtocol! { get set }
}

//MARK: View

protocol HomeViewProtocol: class {
    var presenter: HomePresenterProtocol! { get set }
}
