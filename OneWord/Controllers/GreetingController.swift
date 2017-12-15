//
//  GreetingController.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

class GreetingController {
    private(set) var greetings = ["Hello world!", "Witaj świecie!", "Hallo welt!", "Ciao mondo"]
    
    func getRandomGreeting() -> String {
        return self.greetings[Int(arc4random() % UInt32(self.greetings.count))]
    }
}
