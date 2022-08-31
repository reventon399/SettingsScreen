//
//  Model.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit

struct ProfileSettingsItems {
    var personImage: UIImage
    var name: String
    var content: String
}

struct CellItems {
    var icon: UIImage
    var title: String
    var isSwitch: Bool
}

struct CellItemsWithNotification {
    var icon: UIImage
    var title: String
    var notification: UIImageView
}

extension ProfileSettingsItems {
    static var myProfile: ProfileSettingsItems = ProfileSettingsItems(
        personImage: UIImage(named: "myPhoto") ?? UIImage(systemName: "house")!,
        name: "Алексей Лосев",
        content: "Apple ID, iCloud, контент и покупки")
}

extension CellItems {
    static var cellItems: [[CellItems]] = [
        [CellItems(icon: UIImage(systemName: "airplane")!, title: "Авиарежим", isSwitch: true),
         CellItems(icon: UIImage(systemName: "wifi")!, title: "Wi-Fi", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "Bluetooth", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "Сотовая связь", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "Режим модема", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "VPN", isSwitch: true)],
        
        [CellItems(icon: UIImage(systemName: "airplane")!, title: "Уведомления", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "Звуки, тактильные сигналы", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "Не беспокоить", isSwitch: false),
         CellItems(icon: UIImage(systemName: "airplane")!, title: "Экранное время", isSwitch: false)],
    ]
    
}
