//
//  StartPage.swift
//  ArQian
//
//  Created by 阿倩 on 2021/12/1.
//

import SwiftUI



struct StartPage: View {
    @Binding var isStarted:Bool
    var titles = ["Test", "Test1", "Test2", "Test3"]
    @State var location = 0

    
    @State var Describe = "Test"
    @State var offsetHeight = 100
    
    @State var opa = false
    @State var height = false
    @State var size = 20
    
    let timer = Timer.publish(every: 1.0, on: .main, in: .default).autoconnect()
    
    var body: some View {

            ZStack{
                Color.blue.ignoresSafeArea(.all)
                Text(Describe)
                    .font(.system(size: 50))
                    .scaleEffect(opa ? 1.0 : 0.5)
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .animation(.easeInOut(duration: opa ? 1.0 : 0))
                    .opacity(opa ? 1.0 : 0)
                    .offset(x: 0, y: height ? -100 : 0)
                    .onReceive(timer, perform: { time in
                        print(location)
                        opa.toggle()
                        height.toggle()
                        if location < titles.count{
                            Describe = titles[location]
                            location = location + 1
                            print("change\(location)")
                        }else{
                            
                            self.timer.upstream.connect().cancel()
                            isStarted.toggle()
                        }
                    })
            }
            
            
        
    }
}

