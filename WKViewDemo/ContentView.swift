//
//  ContentView.swift
//  WKViewDemo
//
//  Created by Alex Nagy on 09.12.2020.
//

import SwiftUI
import WKView

struct ContentView: View {
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Divider()
                
                // 1. Push a WebView with a url
                NavigationLink("Push WebView", destination: WebView(url: "https://rebeloper.com"))
                
                Button(action: {
                    isSheetPresented.toggle()
                }, label: {
                    Text("Present WebView")
                }).sheet(isPresented: $isSheetPresented, content: {
                    NavigationView {
                        // 2. Present WebView in a modal with hiding the back button
//                        WebView(url: "https://rebeloper.com", hidesBackButton: true)
                        
                        // 3. Present a customized WebView in a modal
                        WebView(url: "https://rebeloper.com",
                                tintColor: .red,
                                titleColor: .yellow,
                                backText: Text("Cancel").italic(),
                                reloadImage: Image(systemName: "figure.wave"),
                                goForwardImage: Image(systemName: "forward.frame.fill"),
                                goBackImage: Image(systemName: "backward.frame.fill"))
                        
                    }
                })
                Spacer()
            }
            .navigationBarTitle("WKView")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
