//
//  ColorSwitcherView.swift
//  ColorSwitcher
//
//  Created by BEREZIN Stanislav on 17.10.2020.
//

import SwiftUI

struct MainView: View {
    
    private let screenWidth = UIScreen.main.bounds.width
    private let screenHeight = UIScreen.main.bounds.height
    
    @State private var title = "Start"
    @State private var color: Colors = .red
    
    @State private var red = 0.9
    @State private var yellow = 0.9
    @State private var green = 0.9
    
    private let dark = 0.9
    private let light = 0.0
    
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: screenHeight / 10) {
                VStack(spacing: 16) {
                    Color(.systemRed)
                        .frame(width: screenWidth / 2.5, height: screenWidth / 2.5, alignment: .center )
                        .clipShape(Circle())
                        .grayscale(red)
                    Color(.systemYellow)
                        .frame(width: screenWidth / 2.5, height: screenWidth / 2.5, alignment: .center )
                        .clipShape(Circle())
                        .grayscale(yellow)
                    Color(.systemGreen)
                        .frame(width: screenWidth / 2.5, height: screenWidth / 2.5, alignment: .center )
                        .clipShape(Circle())
                        .grayscale(green)
                }
                Button(title) { pressStart() }
                    .frame(width: screenWidth / 2, height: screenWidth / 8)
                    .font(.title)
                    .background(Color(.systemBlue))
                    .cornerRadius(screenWidth / 35)
                    .foregroundColor(.white)
            }
        }
    }
    
    func pressStart() {
        title = "Next"
        switch color {
        case .red:
            red = light
            green = dark
            color = .yellow
        case .yellow:
            yellow = light
            red = dark
            color = .green
        case .green:
            green = light
            yellow = dark
            color = .red
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
