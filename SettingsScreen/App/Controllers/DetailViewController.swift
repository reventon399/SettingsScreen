//
//  DetailViewController.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 03.09.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var items: SettingsItems?
    
    
    //MARK: - Outlets
    
    
    private lazy var cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 140
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var cellNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        return label
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
        view.addSubview(cellImageView)
        view.addSubview(cellNameLabel)
    }
    
    private func setupLayout() {
        cellImageView.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.height.equalTo(300)
        }
        
        cellNameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(cellImageView.snp.bottom).offset(20)
        }
    }
    
    private func fillSettings() {
        cellImageView.image = items?.cellImage
        cellNameLabel.text = items?.cellTitle
    }
    
}
