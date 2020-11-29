//
//  HomeDetailViewController.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import UIKit

final class HomeDetailViewController: UIViewController {
    
    private let label = UILabel()
    var presenter: HomeDetailPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        presenter.getContactData()
    }
}

//MARK: Set UI

extension HomeDetailViewController {
    
    private func setUI() {
        
        view.backgroundColor = .systemPink
        label.tintColor = .white
        label.font = .boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        label.text = "tester" 
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

extension HomeDetailViewController: HomeDetailViewProtocol {
    func getContactData(contact: TestDatas) {
        label.text = contact.name
    }
}
