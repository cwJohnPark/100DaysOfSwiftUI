//
//  SizeClassWithAnyViewType.swift
//  BookWorm
//
//  Created by John Park on 2020/05/02.
//  Copyright © 2020 John Park. All rights reserved.
//

import SwiftUI

struct SizeClassWithAnyViewType: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        if sizeClass == .compact {
            return
                //HStack {
                //VStack { // Not opaque return type???
            AnyView(VStack {
                Text("Active size class:")
                Text("Compact")
            }.font(.largeTitle))
            
        } else {
            return
            AnyView(VStack {
                Text("Active size class:")
                Text("Regular")
                
            }.font(.largeTitle))
        }
    }
}

struct SizeClassWithAnyViewType_Previews: PreviewProvider {
    static var previews: some View {
        // Try Running in landscape 12.9-inch iPad pro simulator
        SizeClassWithAnyViewType()
    }
}
