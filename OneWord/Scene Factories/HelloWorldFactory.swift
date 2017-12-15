//
//  HelloWorldFactory.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol HelloWorldFactory {
    func createHelloWorldViewController(viewModel: HelloWorldViewModelProtocol) -> HelloWorldViewController
}
