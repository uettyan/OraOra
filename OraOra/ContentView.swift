//
//  ContentView.swift
//  OraOra
//
//  Created by 植田直人 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        ZStack{
            Color.white.gesture(DragGesture(minimumDistance: 0).onEnded({ (value) in
                print(value.location)
            }))
            ImageContent(viewModel: viewModel)
        }
    }
}

class ViewModel: ObservableObject {
    @Published var location: CGPoint = CGPoint.init(x: 0, y: 0)
}

struct ImageContent: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        ZStack{
            Circle().position(viewModel.location)
                .frame(width: 100, height: 100)
        }
    }
}
