//
//  ViewController.swift
//  praksa zadatak
//
//  Created by Mile Prastalo on 28.10.22..
//

import UIKit

class ViewController: UIViewController {
    
    var otherVC: UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SecondViewController {
            otherVC = segue.destination
        }
    }


}

