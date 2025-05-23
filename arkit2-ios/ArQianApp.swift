//
//  ArQianApp.swift
//  ArQian
//
//  Created by 阿倩 on 2021/11/30.
//

import SwiftUI




@main
struct ArQianApp: App {
    @State var isStarted = false
    
    var body: some Scene {
        WindowGroup {
            if isStarted {
                ContentView()
            }else{
                StartPage(isStarted: $isStarted)
            }
        }
    }
}


