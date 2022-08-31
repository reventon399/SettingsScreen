//
//  ProfileCustomTableViewCell.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit

class ProfileCustomTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    
    
    //MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    
    //MARK: - Reuse
}
