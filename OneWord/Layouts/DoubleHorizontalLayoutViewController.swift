//
//  DoubleHorizontalViewController.swift
//  OneWord
//
//  Created by Karol Bukowski on 16.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol DoubleHorizontalLayoutProtocol: class {
    var topViewHeight: CGFloat { get }
    var backgroundColor: UIColor { get }
}

protocol DoubleHorizontalViewModelProtocol {
    var topViewController: UIViewController { get }
    var bottomViewController: UIViewController { get }
}

class DoubleHorizontalLayoutViewController: UIViewController {
    // MARK:- Properties
    private var viewModel: DoubleHorizontalViewModelProtocol
    private var layout: DoubleHorizontalLayoutProtocol
    
    private lazy var topView: UIView = {
        let view = UIView()
        self.view.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        view.heightAnchor.constraint(equalToConstant: self.layout.topViewHeight).isActive = true
        
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        self.view.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        view.topAnchor.constraint(equalTo: self.topView.bottomAnchor).isActive = true
        
        return view
    }()
    
    // MARK:- Initialization
    init(viewModel: DoubleHorizontalViewModelProtocol, layout: DoubleHorizontalLayoutProtocol) {
        self.viewModel = viewModel
        self.layout = layout
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(coder: aDecoder)
    }
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
        
        self.setupView()
    }
    
    private func setupView() {
        self.view.backgroundColor = self.layout.backgroundColor
        
        addChildViewController(self.viewModel.topViewController, to: self.topView)
        addChildViewController(self.viewModel.bottomViewController, to: self.bottomView)
    }
}

