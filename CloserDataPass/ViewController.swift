//
//  ViewController.swift
//  CloserDataPass
//
//  Created by Mansi Mahajan on 8/10/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ShowLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showOutlet.addTarget(self, action: #selector(Show(_:)), for: .touchUpInside)
    }
    @IBOutlet weak var showOutlet: UIButton!
    
    @objc func Show(_ sender: UIButton) {
        if let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            
            secondViewController.buttonAction = {(text) -> () in
                self.ShowLabel.text = text
                self.navigationController?.popViewController(animated: true)
                return
                //return secondViewController.dismiss(animated: true, completion: nil)
            }
            navigationController?.pushViewController(secondViewController, animated: true)
           // present(secondViewController, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

