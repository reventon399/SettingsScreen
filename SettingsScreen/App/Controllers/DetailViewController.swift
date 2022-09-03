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
        imageView.layer.cornerRadius = 150
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 5
        imageView.layer.borderColor = UIColor.darkGray.cgColor
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
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
}
