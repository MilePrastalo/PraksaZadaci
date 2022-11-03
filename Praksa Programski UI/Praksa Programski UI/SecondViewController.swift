//
//  SecondViewController.swift
//  Praksa Programski UI
//
//  Created by Mile Prastalo on 3.11.22..
//

import UIKit

class SecondViewController: UIViewController {
    
    private let secondView = SecondView()
    
    override func loadView() {
        view = secondView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondView.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        secondView.button.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(longButtonPressed(param:))))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc private func buttonTapped() {
        print("ButtonTap")
    }
    
    @objc private func longButtonPressed(param: UILongPressGestureRecognizer) {
        if param.state == .began {
            print("longButtonPressed began")
        } else if param.state == .ended {
            print("longButtonPressed ended")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
