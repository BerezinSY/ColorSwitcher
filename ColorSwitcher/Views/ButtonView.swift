//
//  ButtonView.swift
//  ColorSwitcher
//
//  Created by BEREZIN Stanislav on 18.10.2020.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let background: UIColor
    let textColor: Color
    let width: CGFloat
    let height: CGFloat
    let action: () -> ()
    
    private let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        Button(title) { action() }
            .frame(width: screenWidth / width, height: screenWidth / height)
            .font(.title)
            .background(Color(.systemBlue))
            .cornerRadius(screenWidth / 35)
            .foregroundColor(textColor)
    }
}
