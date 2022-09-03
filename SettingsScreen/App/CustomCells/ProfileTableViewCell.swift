//
//  ProfileTableViewCell.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 03.09.2022.
//

import UIKit
import SnapKit

final class ProfileTableViewCell: UITableViewCell {
    
    static var identifier = "ProfileTableViewCell"
    
    var items: SettingsItems? {
        didSet {
            profileImageView.image = items?.cellImage
            cellTitleLabel.text = items?.cellTitle
            
            if items?.isSwitchHidden == false {
                accessoryType = .disclosureIndicator
            }
        }
    }
    
    //MARK: - Outlets
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 35
        return imageView
    }()
    
    private lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = "Apple ID, iCloud, контент и покупки"
        return label
    }()
    
    private lazy var cellTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return label
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
        addSubview(profileImageView)
        addSubview(contentLabel)
        addSubview(cellTitleLabel)
    }
    
    private func setupLayout() {
        profileImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.bottom.equalTo(contentView).offset(-10)
            make.top.equalTo(contentView).offset(10)
            make.height.width.equalTo(70)
            make.centerY.equalTo(contentView)
        }
        
        cellTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(25)
            make.left.equalTo(profileImageView.snp.right).offset(10)
        }
        
        contentLabel.snp.makeConstraints { make in
            make.left.equalTo(profileImageView.snp.right).offset(10)
            make.bottom.equalTo(contentView).offset(-15)
        }
    }
    
    //MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.items = nil
    }
}
