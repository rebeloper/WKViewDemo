//
//  ContentView.swift
//  WKViewDemo
//
//  Created by Alex Nagy on 09.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Divider()
                
                // 1. Push a WebView with a url
                
                Button(action: {
                    isSheetPresented.toggle()
                }, label: {
                    Text("Present WebView")
                }).sheet(isPresented: $isSheetPresented, content: {
                    NavigationView {
                        // 2. Present WebView in a modal with hiding the back button
                        
                        // 3. Present a customized WebView in a modal
                        
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
