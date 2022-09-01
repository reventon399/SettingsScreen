//
//  ViewController.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var settingItems: [[SettingsItems]]?
    
    //MARK: - Outlets
    
   private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(ProfileCustomTableViewCell.self, forCellReuseIdentifier: "ProfileCustomTableViewCell")
        tableView.dataSource = self
        return tableView
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
    
}

    //MARK: - extension

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingItems?[section].count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCustomTableViewCell", for: indexPath)
        return cell
    }
    
    
}
