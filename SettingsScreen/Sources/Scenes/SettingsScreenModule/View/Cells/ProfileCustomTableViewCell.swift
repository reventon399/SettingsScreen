//
//  ProfileCustomTableViewCell.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit
import SnapKit

final class ProfileCustomTableViewCell: UITableViewCell {
    
    static var identifier = "ProfileCustomTableViewCell"
    
    var items: SettingsItems? {
        didSet {
            cellTitleLabel.text = items?.cellTitle
            cellIconImageView.image = items?.cellImage
            imageContainer.backgroundColor = items?.cellBackgroundColor
            cellSwitcher.isHidden = items?.isSwitchHidden ?? true
            satusLabel.text = items?.statusLabel
            
            if items?.isSwitchHidden == true {
                accessoryType = .disclosureIndicator
            }
        }
    }
    
    //MARK: - Outlets
    
    private lazy var cellTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    private lazy var cellIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
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
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    //MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(imageContainer)
        imageContainer.addSubview(cellIconImageView)
        contentView.addSubview(cellTitleLabel)
        contentView.addSubview(cellSwitcher)
        contentView.addSubview(notificationImage)
        contentView.addSubview(satusLabel)
    }
    
    private func setupLayout() {
        
        imageContainer.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView.snp.left).offset(20)
            make.width.height.equalTo(25)
        }
        cellIconImageView.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
            make.width.height.equalTo(20)
        }
        cellTitleLabel.snp.makeConstraints { make in
            make.left.equalTo(imageContainer.snp.right).offset(10)
            make.centerY.equalTo(contentView)
        }
        cellSwitcher.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView.snp.right).offset(-17)
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
        }
        satusLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView.snp.right).offset(-13)
            
        }
    }
    
    //MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.items = nil
    }
}
