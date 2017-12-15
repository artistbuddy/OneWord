//
//  HelloWorldSceneAssembler.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol HelloWorldSceneAssemblerProtocol {
    func assemble() -> HelloWorldViewController
    func assemble() -> HelloWorldViewModelProtocol
    func assemble() -> GreetingController
}

class HelloWorldSceneAssembler {
    
}

// MARK:- HelloWorldSceneAssemblerProtocol
extension HelloWorldSceneAssembler: HelloWorldSceneAssemblerProtocol {
    func assemble() -> HelloWorldViewController {
        return SceneFactory.helloWorld.createHelloWorldViewController(viewModel: self.assemble())
    }
    
    func assemble() -> HelloWorldViewModelProtocol {
        return HelloWorldViewModel(greetingController: self.assemble())
    }
    
    func assemble() -> GreetingController {
        return GreetingController()
    }
}
