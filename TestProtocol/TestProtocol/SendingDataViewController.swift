//
//  SendingDataViewController.swift
//  TestProtocol
//
//  Created by Manish Kumar on 25/07/17.
//  Copyright © 2017 appface. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func sentData(data : String)
}

class SendingDataViewController: UIViewController {

    @IBOutlet weak var textFieldOutlet: UITextField!
    
    var delegate : DataSentDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sentDataByButton(_ sender: Any) {
        if delegate != nil{
            if textFieldOutlet.text != nil{
            let data = textFieldOutlet.text
                delegate?.sentData(data: data!)
                dismiss(animated: true, completion: nil)
            
            }
        
        }
        
    }

}
