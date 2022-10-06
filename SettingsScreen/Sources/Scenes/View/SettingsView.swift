//
//  SettingsView.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 05.10.2022.
//

import UIKit
import SnapKit

class SettingsView: UIView {

    private var settingsItems = [[SettingsItems]]()
    //MARK: - Configuration
    
    func configureView(with model: [[SettingsItems]]) {
        self.settingsItems = model
    }
    
    //MARK: - Outlets
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(ProfileCustomTableViewCell.self, forCellReuseIdentifier: ProfileCustomTableViewCell.identifier)
        tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: ProfileTableViewCell.identifier)
        return tableView
    }()
    
    
    //MARK: = Init
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(snp.top)
            make.right.equalTo(snp.right)
            make.bottom.equalTo(snp.bottom)
            make.left.equalTo(snp.left)
        }
    }
}
