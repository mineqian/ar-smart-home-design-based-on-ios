//
//  HomePage.swift
//  ArQian
//
//  Created by 阿倩 on 2021/12/1.
//

import SwiftUI


struct HomePage: View {
    var body: some View {

        NavigationView{
            HStack{
                
                    NavigationLink(destination: ArtPage()) {
                        Text("Test")
                    }
                }
            
        }
            
    }
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
