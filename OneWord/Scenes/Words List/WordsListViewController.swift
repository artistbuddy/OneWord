//
//  WordsListViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

// TODO: implement WordsListViewModelProtocol
protocol WordsListViewModelProtocol {
    
}

class WordsListViewController: UIViewController {
    // MARK:- Properites
    var viewModel: WordsListViewModelProtocol!
    
    // MARK:- IBOutlets
    @IBOutlet private weak var emptyListLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
    }
}
