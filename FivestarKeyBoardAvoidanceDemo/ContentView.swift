//
//  ContentView.swift
//  FivestarKeyBoardAvoidanceDemo
//
//  Created by Terry Kuo on 2022/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var redSize: CGSize = .zero
    @State private var yellowSize: CGSize = .zero
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Color.red
                .overlay(Text(verbatim: "\(redSize)"))
                .readSize {
                    redSize = $0
                }
            
            TextField("Name:", text: $name)
            
            Color.yellow
                .overlay(Text(verbatim: "\(yellowSize)"))
                .readSize {
                    yellowSize = $0
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


