//
//  ViewController.swift
//  Praksa Programski UI
//
//  Created by Mile Prastalo on 3.11.22..
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }


}

