//
//  DetailView.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 05.10.2022.
//

import UIKit
import SnapKit

class DetailView: UIView {
    
    //MARK: - Outlets
    
    lazy var imageContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    lazy var cellNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var cellIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
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
        addSubview(imageContainer)
        imageContainer.addSubview(cellIconImageView)
        addSubview(cellNameLabel)
    }
    
    private func setupLayout() {
        imageContainer.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.width.height.equalTo(300)
        }
        cellIconImageView.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
            make.width.height.equalTo(300)
        }
        cellNameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.top.equalTo(imageContainer.snp.bottom).offset(20)
            make.left.equalTo(snp.left).offset(20)
            make.right.equalTo(snp.right).offset(-20)
        }
    }
}
