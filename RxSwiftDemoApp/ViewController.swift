//
//  ViewController.swift
//  RxSwiftDemoApp
//
//  Created by ryota on 2021/11/23.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
        @IBOutlet weak var favButton: UIButton!
        
        private var countNum = 0
        
        private let disposeBag = DisposeBag()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            favButton.rx.tap
                .subscribe(onNext: {[unowned self] _ in
                    self.countNum += 1
                    self.countLabel.text = String(self.countNum)
                })
            .disposed(by: disposeBag)
        }

}

