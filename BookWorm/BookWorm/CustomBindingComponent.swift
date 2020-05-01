//
//  CustomBindingComponent.swift
//  BookWorm
//
//  Created by John Park on 2020/05/02.
//  Copyright © 2020 John Park. All rights reserved.
//

import SwiftUI

// Power of Boolean

struct PushButton: View {
    let title: String
    //@State var isOn: Bool // two source of truth ???
    @Binding var isOn: Bool // dependent on the super view
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            self.isOn.toggle()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: isOn ? onColors : offColors), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}
struct CustomBindingComponent: View {

    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            //PushButton(title: "Remember You", isOn: rememberMe) // control over property to subview
            PushButton(title: "Remember Me", isOn: $rememberMe)
            
            Text(rememberMe ? "On" : "Off")
        }
    }
}

struct CustomBindingComponent_Previews: PreviewProvider {
    static var previews: some View {
        CustomBindingComponent()
    }
}
