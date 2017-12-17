//
//  WordsListViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol WordsListViewModelProtocol: UITableViewDataSource, UITableViewDelegate {
    var emptyListMessage: String { get }
    var shouldHideWordsList: Bool { get }
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
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.isHidden = self.viewModel.shouldHideWordsList
    }
    
    private func setupView() {
        self.emptyListLabel.text = self.viewModel.emptyListMessage
        self.tableView.delegate = self.viewModel
        self.tableView.dataSource = self.viewModel
    }
}
