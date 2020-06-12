//
//  ContentView2.swift
//  WindowWebView
//
//  Created by liuyanjun on 2020/6/12.
//  Copyright © 2020 liuyanjun. All rights reserved.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        Button(action: {
            print("contentView2 clicked")
        }, label: {
            Text("Click2 me")
        })
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
