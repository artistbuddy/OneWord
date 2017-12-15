//
//  HelloWorldViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol HelloWorldViewModelProtocol {
    var message: String { get }
}

class HelloWorldViewController: UIViewController {
    // MARK:- Properties
    var viewModel: HelloWorldViewModelProtocol!
    
    // MARK:- IBOutlets
    @IBOutlet private weak var messageLabel: UILabel!
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    // MARK:-
    private func setupView() {
        self.messageLabel.text = self.viewModel.message
    }
}
