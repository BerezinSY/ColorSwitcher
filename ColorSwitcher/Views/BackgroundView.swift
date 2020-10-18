//
//  BackgroundView.swift
//  ColorSwitcher
//
//  Created by BEREZIN Stanislav on 18.10.2020.
//

import SwiftUI

struct BackgroundView: View {
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .edgesIgnoringSafeArea(.all)
    }
}
