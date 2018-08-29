//
//  SecondViewController.swift
//  CloserDataPass
//
//  Created by Mansi Mahajan on 8/10/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    public var buttonAction: ((String?) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButton.addTarget(self, action: #selector(update), for: .touchUpInside)
    }
    
    @IBOutlet weak var textChange: UITextField!
    @IBOutlet weak var updateButton: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func update() {
        guard let buttonAction = buttonAction else {
            navigationController?.popViewController(animated: true)
            return
        }
        buttonAction(textChange.text)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
