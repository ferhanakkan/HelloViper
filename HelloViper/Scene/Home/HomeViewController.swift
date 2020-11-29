//
//  HomeViewController.swift
//  HelloViper
//
//  Created by Ferhan Akkan on 29.11.2020.
//

import UIKit

class HomeViewController: UITableViewController {
    
    var presenter: HomePresenterProtocol!
    
    private var showDatas: [TestDatas] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        presenter.getContacts()
    }
}

extension HomeViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        showDatas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = showDatas[indexPath.row].name
        return cell
    }
}

extension HomeViewController: HomeViewProtocol {
    func showContacts(_ contacts: [TestDatas]) {
        showDatas = contacts
    }
}
