//
//  ContentView.swift
//  OraOra
//
//  Created by 植田直人 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var oraModel: OraModel
    var body: some View {
        ZStack{
            Color.white.gesture(DragGesture(minimumDistance: 0).onEnded({ (value) in
                print(value.location)
                let oram = OraModel()
                oram.location = value.location
                self.oraModel = oram
            }))
            ImageContent(oraModel: oraModel)
        }
    }
}

// OraModel上でlocationを管理
// TODO 表示したらゆっくり消える
class OraModel: ObservableObject {
    @Published var location: CGPoint = CGPoint.init(x: 0, y: 0)
}

struct ImageContent: View {
    @ObservedObject var oraModel: OraModel
    var body: some View {
        ZStack{
            Image("Ora").position(oraModel.location)
        }
    }
}


