//
//  ColorView.swift
//  ColorSwitcher
//
//  Created by BEREZIN Stanislav on 18.10.2020.
//

import SwiftUI

struct ColorView: View {
    
    let color: UIColor
    let grayScale: Double
    let size: CGFloat
    private let screenWidth = UIScreen.main.bounds.width
    
    
    var body: some View {
        Color(color)
            .frame(width: screenWidth / size, height: screenWidth / size)
            .clipShape(Circle())
            .grayscale(grayScale)
    }
}
