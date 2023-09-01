//
//  Color.swift
//  CryptoCapstone
//
//  Created by Consultant on 8/17/23.
//

import Foundation
import SwiftUI

//extending system Color class
extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
    
}

//Structures color assets into a theme

struct ColorTheme{

    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
