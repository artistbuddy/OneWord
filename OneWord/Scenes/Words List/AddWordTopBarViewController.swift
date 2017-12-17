//
//  AddWordTopBarViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

// TODO: implement AddWordTopBarViewModelProtocol
protocol AddWordTopBarViewModelProtocol {
    
}

class AddWordTopBarViewController: UIViewController {
    // MARK:- Properties
    var viewModel: AddWordTopBarViewModelProtocol!
    
    // MARK:- IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var saveButton: UIButton!
    @IBOutlet private weak var cancelButton: UIButton!
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
    }
    
    // MARK:- IBActions
    // TODO: implement actionSave(_:)
    @IBAction private func actionSave(_ sender: UIButton) {
        
    }
    
    // TODO: implement actionCancel(_:)
    @IBAction private func actionCancel(_ sender: UIButton) {
        
    }
    
}
