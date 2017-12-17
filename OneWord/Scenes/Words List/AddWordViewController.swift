//
//  AddWordViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol AddWordViewControllerDelegate: class {
    func textFieldDidValueChange(value: String)
    func textFieldDidEndEnditing(value: String)
}

protocol AddWordViewModelProtocol: class {
    var textFieldPlaceholder: String { get }
}

class AddWordViewController: UIViewController {
    // MARK:- Properties
    var viewModel: AddWordViewModelProtocol!
    weak var delegate: AddWordViewControllerDelegate?
    
    // MARK:- IBOutlets
    @IBOutlet private weak var textField: UITextField!
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    private func setupView() {
        self.textField.placeholder = self.viewModel.textFieldPlaceholder
    }
    
    // MARK:- IBActions
    @IBAction private func actionValueChanged(_ sender: UITextField) {
        if let text = sender.text {
            self.delegate?.textFieldDidValueChange(value: text)
        }
    }
    
    @IBAction private func actionEditingDidEnd(_ sender: UITextField) {
        if let text = sender.text {
            self.delegate?.textFieldDidEndEnditing(value: text)
        }
    }
    
}
