//
//  ContentView.swift
//  OraOra
//
//  Created by 植田直人 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.white.gesture(DragGesture(minimumDistance: 0).onEnded({ (value) in
            print(value.location)
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
