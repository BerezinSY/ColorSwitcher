//
//  ScreenModel.swift
//  ColorSwitcher
//
//  Created by BEREZIN Stanislav on 18.10.2020.
//

import Foundation

struct ScreenModel {
    var buttonTitle: String
    var color: Colors = .red
    
    var red: Double
    var yellow: Double
    var green: Double
    
    
    init(mode: Double = 0.9, title: String = "Start") {
        buttonTitle = title
        red = mode
        yellow = mode
        green = mode
    }
}
