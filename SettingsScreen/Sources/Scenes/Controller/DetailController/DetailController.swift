//
//  DetailViewController.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 03.09.2022.
//

import UIKit

class DetailController: UIViewController {
    
    var items: SettingsItems?
    //MARK: - Private properties
    
    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    private var model: SettingsModel?

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillSettings()
    }
}

extension DetailController {
    private func fillSettings() {
        detailView?.cellIconImageView.image = items?.cellImage
        detailView?.cellNameLabel.text = items?.cellTitle
        detailView?.imageContainer.backgroundColor = items?.cellBackgroundColor
    }
    }

