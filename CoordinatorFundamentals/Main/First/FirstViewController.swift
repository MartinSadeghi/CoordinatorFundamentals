//
//  FirstViewController.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Combine


class FirstViewController: UIViewController {

    var infoLable: UILabel?
    var viewModel: FirstTabViewModel!
    var showDetailRequested: () -> () = { }
    
    var subscription = Set<AnyCancellable>()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupInfoLable()
        setupDetailButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        infoLable?.text = "\(viewModel.name) with email \(viewModel.email)"

    }
    
    
    func setupDetailButton() {
        let detailButton = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 60))
        detailButton.setTitle("Go to detail", for: .normal)
        detailButton.setTitleColor(.systemBlue, for: .normal)
        detailButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(detailButton)
    }
    
    @objc func buttonAction() {
        showDetailRequested()
    }
    
    func setupInfoLable() {
        let infoLable = UILabel(frame: CGRect(x: 100, y: 300, width: 300, height: 60))
        self.view.addSubview(infoLable)
        self.infoLable = infoLable
    }

}
