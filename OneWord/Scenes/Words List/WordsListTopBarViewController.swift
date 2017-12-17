//
//  WordsListTopBarViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

// TODO: implement WordsListTopBarViewModelProtocol
protocol WordsListTopBarViewModelProtocol {
    
}

class WordsListTopBarViewController: UIViewController {
    // MARK:- Properties
    var viewModel: WordsListTopBarViewModelProtocol!
    
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
    }

    // MARK:- IBActions
    // TODO: implement addAction(_:)
    @IBAction private func addAction(_ sender: UIButton) {
        
    }
    
    // TODO: implement notificationsAction(_:)
    @IBAction private func notificationsAction(_ sender: UIButton) {
        
    }
}
