//
//  Utils.swift
//  ArQian
//
//  Created by 阿倩 on 2021/12/1.
//

import Foundation
import Combine
class Utils{
    var canceller: AnyCancellable?
    func start(receiveValue: @escaping (() -> Void)) {
           let timerPublisher = Timer
               .publish(every: 1, on: .main, in: .common)
               .autoconnect()
           
           self.canceller = timerPublisher.sink { date in
               receiveValue()
           }
       }
}
