//
//  ProfileCustomTableViewCell.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit
import SnapKit

final class ProfileCustomTableViewCell: UITableViewCell {
    
    var items: SettingsItems? {
        didSet {
            profileImageView.image = items?.cellImage
            nameLabel.text = items?.cellTitle
            
        }
    }
    
    //MARK: - Outlets
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let contentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.text = "Apple ID, iCloud, контент и покупки"
        return label
    }()
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 1
        return stack
    }()
    
    
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
        stack.addArrangedSubview(nameLabel)
        stack.addArrangedSubview(contentLabel)
        addSubview(profileImageView)
        addSubview(stack)
    }
    
    private func setupLayout() {
        
        profileImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.bottom.equalTo(contentView).offset(-10)
            make.top.equalTo(contentView).offset(10)
            
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(60)
        }
        stack.snp.makeConstraints { make in
            make.centerY.equalTo(profileImageView.snp.centerY)
            make.left.equalTo(profileImageView.snp.right).offset(20)
        }
    }
    
    //MARK: - Reuse
    
    
}
