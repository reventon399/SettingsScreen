//
//  ViewController.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit
import SnapKit

final class SettingsController: UIViewController {
    
    //MARK: - Private properties
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil}
        return view as? SettingsView
    }
    
    private var model:  SettingsModel?
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        view = SettingsView()
        model = SettingsModel()
        configureView()
        setupDelegates()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

//MARK: - Extension

extension SettingsController {
    func configureView() {
        guard let models = model?.createSettings() else { return }
        models.forEach { [unowned self] model in
            settingsView?.configureView(with: [model])
        }
    }
    
    func setupDelegates() {
        settingsView?.tableView.dataSource = self
        settingsView?.tableView.delegate = self
    }
}


extension SettingsController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.createSettings()[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let profileCell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.identifier, for: indexPath) as! ProfileTableViewCell
            profileCell.items = model?.createSettings()[indexPath.section][indexPath.row]
            return profileCell
        default:
            let mainCell = tableView.dequeueReusableCell(withIdentifier: ProfileCustomTableViewCell.identifier, for: indexPath) as! ProfileCustomTableViewCell
            mainCell.items =  model?.createSettings()[indexPath.section][indexPath.row]
            return mainCell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailController()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.items =  model?.createSettings()[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
        print("Была нажата ячейка -> \(String(describing:  model?.createSettings()[indexPath.section][indexPath.row].cellTitle))")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  model?.createSettings().count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        } else {
            return 50
        }
    }
}
