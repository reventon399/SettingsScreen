//
//  Model.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit

struct ProfileSettingsItems {
    var cellImage: UIImage
    var notificationImage: UIImage?
    var cellBackgroundColor: UIColor?
    var cellTitle: String
    var statusLabel: UILabel?
    var isSwitchActivate: Bool?
    var isZeroSection: Bool?
}

extension ProfileSettingsItems {
    
    static var settingsCell: [[ProfileSettingsItems]] = [
        [ProfileSettingsItems(
            cellImage: UIImage(named: "myPhoto") ?? UIImage(systemName: "house")!,
            cellTitle: "Алексей Лосев",
            isZeroSection: true],
    
    ]
//        content: "Apple ID, iCloud, контент и покупки")
}
//
//extension CellItems {
//    static var cellItems: [[CellItems]] = [
//        [CellItems(icon: UIImage(systemName: "airplane")!, title: "Авиарежим", isSwitch: true),
//         CellItems(icon: UIImage(systemName: "wifi")!, title: "Wi-Fi", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "Bluetooth", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "Сотовая связь", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "Режим модема", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "VPN", isSwitch: true)],
//
//        [CellItems(icon: UIImage(systemName: "airplane")!, title: "Уведомления", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "Звуки, тактильные сигналы", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "Не беспокоить", isSwitch: false),
//         CellItems(icon: UIImage(systemName: "airplane")!, title: "Экранное время", isSwitch: false)],
//    ]
//
//}
