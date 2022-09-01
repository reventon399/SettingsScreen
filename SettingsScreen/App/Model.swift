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
    var statusLabel: String?
    var isSwitchActivate: Bool
    var isZeroSection: Bool?
}

extension ProfileSettingsItems {
    
    static var settingsCell: [[ProfileSettingsItems]] = [
        
        // zero section
        [ProfileSettingsItems(cellImage: UIImage(named: "myPhoto") ?? UIImage(systemName: "house")!,
                              cellTitle: "Алексей Лосев",
                              isSwitchActivate: false,
                              isZeroSection: true)],
        
        // first section
        [ProfileSettingsItems(cellImage: UIImage(systemName: "airplane")!,
                              cellBackgroundColor: .orange,
                              cellTitle: "Авиарежим",
                              isSwitchActivate: true),
         ProfileSettingsItems(cellImage: UIImage(systemName: "wifi")!,
                              cellBackgroundColor: .systemBlue,
                              cellTitle: "Wi-Fi",
                              statusLabel: "Rtk-7",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "b.circle")!,
                              cellBackgroundColor: .systemBlue,
                              cellTitle: "Bluetooth",
                              statusLabel: "Не подключен",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "antenna.radiowaves.left.and.right")!,
                              cellBackgroundColor: .systemGreen,
                              cellTitle: "Сотовая связь",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "personalhotspot")!,
                              cellBackgroundColor: .systemGreen,
                              cellTitle: "Режим модема",
                              statusLabel: "Выкл",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "v.circle")!,
                              cellBackgroundColor: .systemBlue,
                              cellTitle: "VPN",
                              statusLabel: "Не подключено",
                              isSwitchActivate: false)],
        
        // second section
        [ProfileSettingsItems(cellImage: UIImage(systemName: "bell.badge.fill")!,
                              cellBackgroundColor: .systemRed,
                              cellTitle: "Уведомления",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "hifispeaker")!,
                              cellBackgroundColor: .systemRed,
                              cellTitle: "Звуки, тактильные сигналы",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "moon.fill")!,
                              cellBackgroundColor: .systemPurple,
                              cellTitle: "Фокусирование",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "timer")!,
                              cellBackgroundColor: .systemPurple,
                              cellTitle: "Экранное время",
                              isSwitchActivate: false)],
        
        // third section
        [ProfileSettingsItems(cellImage: UIImage(systemName: "gear")!,
                              notificationImage: UIImage(named: "notification")!,
                              cellBackgroundColor: .systemGray3,
                              cellTitle: "Основные",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "switch.2")!,
                              cellBackgroundColor: .systemGray3,
                              cellTitle: "Пункт управления",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "textformat.size")!,
                              cellBackgroundColor: .systemBlue,
                              cellTitle: "Экран и яркость",
                              isSwitchActivate: false),
         ProfileSettingsItems(cellImage: UIImage(systemName: "battery.100")!,
                              cellBackgroundColor: .systemGreen,
                              cellTitle: "Аккумулятор",
                              isSwitchActivate: false)]
    ]
}
