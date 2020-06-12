//
//  ContentView.swift
//  WindowWebView
//
//  Created by liuyanjun on 2020/6/12.
//  Copyright © 2020 liuyanjun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var webViewStore = WebViewStore()
    
    var body: some View {
      NavigationView {
        WebView(webView: webViewStore.webView)
          .navigationBarTitle(Text(verbatim: webViewStore.webView.title ?? ""), displayMode: .inline)
          .navigationBarItems(trailing: HStack {
            Button(action: goBack) {
              Image(systemName: "chevron.left")
                .imageScale(.large)
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            }.disabled(!webViewStore.webView.canGoBack)
            Button(action: goForward) {
              Image(systemName: "chevron.right")
                .imageScale(.large)
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            }.disabled(!webViewStore.webView.canGoForward)
          })
      }.onAppear {
        let url = Bundle.main.url(forResource: "test", withExtension: "html")
        let request = URLRequest(url: url!)
        self.webViewStore.webView.load(request)
      }
    }
    
    func goBack() {
      webViewStore.webView.goBack()
    }
    
    func goForward() {
      webViewStore.webView.goForward()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
