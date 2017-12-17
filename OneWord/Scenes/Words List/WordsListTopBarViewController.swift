//
//  WordsListTopBarViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol WordsListTopBarViewModelDelegate: class {
    func didTapAddButton()
    func didTapNotificationButton()
}

protocol WordsListTopBarViewModelProtocol: class {
    var title: String { get }
    var addButtonText: String { get }
    var notificationsButtonText: String { get }
}

class WordsListTopBarViewController: UIViewController {
    // MARK:- Properties
    var viewModel: WordsListTopBarViewModelProtocol!
    weak var delegate: WordsListTopBarViewModelDelegate?
    
    // MARK:- IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var addButton: UIButton!
    @IBOutlet private weak var notificationsButton: UIButton!
    
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
        self.addButton.setTitle(self.viewModel.addButtonText, for: .normal)
        self.notificationsButton.setTitle(self.viewModel.notificationsButtonText, for: .normal)
    }

    // MARK:- IBActions
    @IBAction private func addAction(_ sender: UIButton) {
        self.delegate?.didTapAddButton()
    }
    
    @IBAction private func notificationsAction(_ sender: UIButton) {
        self.delegate?.didTapNotificationButton()
    }
}
