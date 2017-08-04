//
//  ViewController.swift
//  TestProtocol
//
//  Created by Manish Kumar on 25/07/17.
//  Copyright © 2017 appface. All rights reserved.
//

import UIKit

class RecevingVC: UIViewController,DataSentDelegate {

    @IBOutlet weak var recevingDataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func sentData(data: String) {
        recevingDataLabel.text = data
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sentDataSegue"{
            let sendingVC : SendingDataViewController =  segue.destination as! SendingDataViewController
            sendingVC.delegate  = self
        
        }
    }
}

