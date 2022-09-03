//
//  Model.swift
//  SettingsScreen
//
//  Created by Алексей Лосев on 31.08.2022.
//

import UIKit

struct SettingsItems {
    var cellImage: UIImage
    var notificationImage: UIImage?
    var cellBackgroundColor: UIColor?
    var cellTitle: String
    var statusLabel: String?
    var isSwitchHidden: Bool
    var isZeroSection: Bool?
}

extension SettingsItems {
    
    static var settingsCell: [[SettingsItems]] = [
        
        // zero section
        [SettingsItems(cellImage: UIImage(named: "myPhoto")!,
                       cellTitle: "Алексей Лосев",
                       isSwitchHidden: true,
                       isZeroSection: true)],
        
        // first section
        [SettingsItems(cellImage: UIImage(systemName: "airplane")!,
                       cellBackgroundColor: .orange,
                       cellTitle: "Авиарежим",
                       isSwitchHidden: false),
         SettingsItems(cellImage: UIImage(systemName: "wifi")!,
                       cellBackgroundColor: .systemBlue,
                       cellTitle: "Wi-Fi",
                       statusLabel: "Rtk-7",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "b.circle")!,
                       cellBackgroundColor: .systemBlue,
                       cellTitle: "Bluetooth",
                       statusLabel: "Не подключен",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "antenna.radiowaves.left.and.right")!,
                       cellBackgroundColor: .systemGreen,
                       cellTitle: "Сотовая связь",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "personalhotspot")!,
                       cellBackgroundColor: .systemGreen,
                       cellTitle: "Режим модема",
                       statusLabel: "Выкл",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "v.circle")!,
                       cellBackgroundColor: .systemBlue,
                       cellTitle: "VPN",
                       statusLabel: "Не подключено",
                       isSwitchHidden: true)],
        
        // second section
        [SettingsItems(cellImage: UIImage(systemName: "bell.badge.fill")!,
                       cellBackgroundColor: .systemRed,
                       cellTitle: "Уведомления",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "hifispeaker")!,
                       cellBackgroundColor: .systemRed,
                       cellTitle: "Звуки, тактильные сигналы",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "moon.fill")!,
                       cellBackgroundColor: .systemPurple,
                       cellTitle: "Фокусирование",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "timer")!,
                       cellBackgroundColor: .systemPurple,
                       cellTitle: "Экранное время",
                       isSwitchHidden: true)],
        
        // third section
        [SettingsItems(cellImage: UIImage(systemName: "gear")!,
                       notificationImage: UIImage(named: "notification")!,
                       cellBackgroundColor: .systemGray3,
                       cellTitle: "Основные",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "switch.2")!,
                       cellBackgroundColor: .systemGray3,
                       cellTitle: "Пункт управления",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "textformat.size")!,
                       cellBackgroundColor: .systemBlue,
                       cellTitle: "Экран и яркость",
                       isSwitchHidden: true),
         SettingsItems(cellImage: UIImage(systemName: "battery.100")!,
                       cellBackgroundColor: .systemGreen,
                       cellTitle: "Аккумулятор",
                       isSwitchHidden: true)]
    ]
}
