//
//  FirstViewController.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit

class FirstViewController: UIViewController {

    var infoLable: UILabel?
    var viewModel: FirstTabViewModel!
    var showDetailRequested: () -> () = { }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
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
        infoLable.text = "\(viewModel.name) with email \(viewModel.email)"
        self.view.addSubview(infoLable)
        self.infoLable = infoLable
    }

}
