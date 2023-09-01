//
//  UIApplication.swift
//  CryptoCapstone
//
//  Created by Consultant on 8/19/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
