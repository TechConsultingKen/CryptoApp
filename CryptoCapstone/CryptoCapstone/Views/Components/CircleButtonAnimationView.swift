//
//  CircleButtonAnimationView.swift
//  CryptoCapstone
//
//  Created by Consultant on 8/17/23.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    //binds to HomeView
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0: 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none, value: animate)
            .onAppear{
                animate.toggle()
            }
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
