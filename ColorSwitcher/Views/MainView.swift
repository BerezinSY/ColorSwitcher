//
//  ColorSwitcherView.swift
//  ColorSwitcher
//
//  Created by BEREZIN Stanislav on 17.10.2020.
//

import SwiftUI

struct MainView: View {
    
    @State private var color: Colors = .red
    @State var model = ScreenModel()
    
    private let dark = 0.9
    private let light = 0.0
    
    private let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack {
            BackgroundView(color: .darkGray)
            VStack(spacing: screenHeight / 10) {
                VStack(spacing: 16) {
                    ColorView(color: .systemRed, grayScale: model.red, size: 2.5)
                    ColorView(color: .systemYellow, grayScale: model.yellow, size: 2.5)
                    ColorView(color: .systemGreen, grayScale: model.green, size: 2.5)
                }
                ButtonView(title: model.buttonTitle,
                           background: .systemBlue,
                           textColor: .white,
                           width: 2,
                           height: 8,
                           action: pressStart)
            }
        }
    }
    
    private func pressStart() {
        
        model.buttonTitle = "Next"
        switch color {
        
        case .red:
            color = .yellow
            model.red = light
            model.green = dark
        case .yellow:
            color = .green
            model.yellow = light
            model.red = dark
        case .green:
            color = .red
            model.green = light
            model.yellow = dark
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
