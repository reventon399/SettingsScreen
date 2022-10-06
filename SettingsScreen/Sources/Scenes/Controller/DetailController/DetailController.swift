//
//  DetailViewController.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 03.09.2022.
//

import UIKit

class DetailController: UIViewController {
    
    var items: SettingsItems?
    
    //MARK: - Outlets
    
    private lazy var imageContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var cellNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var cellIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        fillSettings()
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(imageContainer)
        imageContainer.addSubview(cellIconImageView)
        //        view.addSubview(cellIconImageView)
        view.addSubview(cellNameLabel)
    }
    
    private func setupLayout() {
        imageContainer.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.height.equalTo(300)
        }
        cellIconImageView.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
            make.width.height.equalTo(300)
        }
        cellNameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(imageContainer.snp.bottom).offset(20)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
        }
    }
    
    private func fillSettings() {
        cellIconImageView.image = items?.cellImage
        cellNameLabel.text = items?.cellTitle
        imageContainer.backgroundColor = items?.cellBackgroundColor
    }    
}
