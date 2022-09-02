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
        tableView.delegate = self
        return tableView
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingItems = SettingsItems.settingsCell
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

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        } else {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingItems?[section].count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingItems?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCustomTableViewCell", for: indexPath) as? ProfileCustomTableViewCell
            cell?.items = settingItems?[indexPath.section][indexPath.row]
            
            return cell ?? UITableViewCell()
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCustomTableViewCell", for: indexPath) as? ProfileCustomTableViewCell
            cell?.items = settingItems?[indexPath.section][indexPath.row]
            
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
