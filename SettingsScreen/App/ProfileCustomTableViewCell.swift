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
            cellTitleLabel.text = items?.cellTitle
            cellIconImageView.image = items?.cellImage
            imageContainer.backgroundColor = items?.cellBackgroundColor
            cellSwitcher.isHidden = ((items?.isSwitchActivate) != nil)
            notificationImage.image = items?.notificationImage
            satusLabel.text = items?.statusLabel
            
            if items?.isSwitchActivate == false {
                accessoryType = .disclosureIndicator
            }
        }
    }
    
    //MARK: - Outlets
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    private lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.text = "Apple ID, iCloud, контент и покупки"
        return label
    }()
    
    private lazy var cellTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private lazy var cellIconImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var imageContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var cellSwitcher: UISwitch = {
        let swither = UISwitch()
        return swither
    }()
    
    private lazy var notificationImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var satusLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 15)
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
        contentView.addSubview(contentLabel)
        contentView.addSubview(cellTitleLabel)
        contentView.addSubview(imageContainer)
        imageContainer.addSubview(cellIconImageView)
        imageContainer.addSubview(profileImageView)
        contentView.addSubview(cellSwitcher)
        contentView.addSubview(notificationImage)
        contentView.addSubview(satusLabel)
    }
    
    private func setupLayout() {
        
            
        
        
        
        
        
        if ((items?.isZeroSection) != nil) {
            profileImageView.snp.makeConstraints { make in
                make.left.equalTo(contentView).offset(10)
                make.bottom.equalTo(contentView).offset(-10)
                make.top.equalTo(contentView).offset(10)
                make.centerY.equalTo(contentView)
                
            }
           
            cellTitleLabel.snp.makeConstraints { make in
                make.top.equalTo(contentView.snp.top).offset(10)
                make.left.equalTo(profileImageView.snp.left).offset(10)
            }
            contentLabel.snp.makeConstraints { make in
                
            }
        } else {
            imageContainer.snp.makeConstraints { make in
                make.centerY.equalTo(contentView)
                make.left.equalTo(contentView.snp.left).offset(20)
                make.width.height.equalTo(25)
            }
            cellIconImageView.snp.makeConstraints { make in
                make.centerY.equalTo(imageContainer.snp.centerY)
                make.width.height.equalTo(20)
            }
            cellTitleLabel.snp.makeConstraints { make in
                make.left.equalTo(imageContainer.snp.right).offset(10)
                make.centerY.equalTo(contentView)
            }
        }
        
    }
    

    //MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.items = nil
    }
    
}
