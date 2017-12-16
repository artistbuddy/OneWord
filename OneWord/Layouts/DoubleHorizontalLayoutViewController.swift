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
}

protocol DoubleHorizontalViewModelProtocol {
    var topViewController: UIViewController { get }
    var bottomViewController: UIViewController { get }
}

class DoubleHorizontalLayoutViewController: UIViewController {
    // MARK:- Properties
    private var viewModel: DoubleHorizontalViewModelProtocol
    weak var layout: DoubleHorizontalLayoutProtocol?
    
    private lazy var topView: UIView = {
        let frame = CGRect(x: self.view.bounds.origin.x,
                           y: self.view.bounds.origin.y,
                           width: self.view.bounds.width,
                           height: self.layout?.topViewHeight ?? 0)
        
        let view = UIView(frame: frame)
        
        view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        view.topAnchor.constraint(equalTo: self.view.topAnchor)
        
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let frame = CGRect(x: self.view.bounds.origin.x,
                           y: self.topView.bounds.maxY,
                           width: self.view.bounds.width,
                           height: self.view.bounds.height - self.topView.bounds.height)
        
        let view = UIView(frame: frame)
        
        view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        view.topAnchor.constraint(equalTo: self.topView.bottomAnchor)
        
        return view
    }()
    
    // MARK:- Initialization
    init(viewModel: DoubleHorizontalViewModelProtocol) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(coder: aDecoder)
    }
    
    private func setupView() {
        self.view.addSubview(topView)
        self.view.addSubview(bottomView)
        
        addChildViewController(self.viewModel.topViewController, to: self.topView)
        addChildViewController(self.viewModel.bottomViewController, to: self.bottomView)
    }
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }
}

