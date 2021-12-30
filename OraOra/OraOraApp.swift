//
//  OraOraApp.swift
//  OraOra
//
//  Created by 植田直人 on 2021/12/21.
//

import SwiftUI

@main
struct OraOraApp: App {
    var model = OraModel()
    var body: some Scene {
        WindowGroup {
            ContentView(oraModel: model)
        }
    }
}
