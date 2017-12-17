//
//  AddWordTopBarViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol AddWordTopBarViewControllerDelegate: class {
    func didTapSaveButton()
    func didTapCancelButton()
}

protocol AddWordTopBarViewModelProtocol: class {
    var title: String { get }
    var saveButtonText: String { get }
    var cancelButtonText: String { get }
}

class AddWordTopBarViewController: UIViewController {
    // MARK:- Properties
    var viewModel: AddWordTopBarViewModelProtocol!
    weak var delegate: AddWordTopBarViewControllerDelegate?
    
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
        
        setupView()
    }
    
    private func setupView() {
        self.titleLabel.text = self.viewModel.title
        self.saveButton.setTitle(self.viewModel.saveButtonText, for: .normal)
        self.cancelButton.setTitle(self.viewModel.cancelButtonText, for: .normal)
    }
    
    // MARK:- IBActions
    @IBAction private func actionSave(_ sender: UIButton) {
        self.delegate?.didTapSaveButton()
    }
    
    @IBAction private func actionCancel(_ sender: UIButton) {
        self.delegate?.didTapCancelButton()
    }
    
}
