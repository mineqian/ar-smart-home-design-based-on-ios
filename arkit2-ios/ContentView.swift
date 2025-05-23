//
//  ContentView.swift
//  ArQian
//
//  Created by 阿倩 on 2021/11/30.
//

import SwiftUI



var tabViewItems = ["home","find","art","city","user"]

var tabViewPages = [HomePage()]


struct ContentView: View {
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection){
            HomePage()
                .tabItem {
                    Image(selection == 0 ? tabViewItems[0] : tabViewItems[0] + "-selected")
                    Text(tabViewItems[0])
                }
                .tag(0)
        
            FindPage()
                .tabItem {
                    Image(selection == 1 ? tabViewItems[1] : tabViewItems[1] + "-selected")
                    Text(tabViewItems[1])
                }
                .tag(1)
            
            ArtPage()
                .tabItem {
                    Image(selection == 2 ? tabViewItems[2] : tabViewItems[2] + "-selected")
                    Text(tabViewItems[2])
                }
                .tag(2)
            
            CityPage()
                .tabItem {
                    Image(selection == 3 ? tabViewItems[3] : tabViewItems[3] + "-selected")
                    Text(tabViewItems[3])
                }
                .tag(3)
            

            
            UserPage()
                .tabItem {
                    Image(selection == 4 ? tabViewItems[4] : tabViewItems[4] + "-selected")
                    Text(tabViewItems[4])
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
