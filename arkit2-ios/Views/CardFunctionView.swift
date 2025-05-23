//
//  CardFunctionView.swift
//  ArQian
//
//  Created by 阿倩 on 2021/12/1.
//

import SwiftUI



struct CardFunctionView: View {
    
    let image:String
    let title:String
    
    
    
    var body: some View {
        VStack{
            Image(self.image)
            Text(self.title)
            
        }
    }
}

struct CardFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        CardFunctionView(image: "home",title: "Home")
    }
}
