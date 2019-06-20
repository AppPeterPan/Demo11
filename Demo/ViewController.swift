//
//  ViewController.swift
//  Demo
//
//  Created by SHIH-YING PAN on 2019/6/20.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Alamofire.request("https://httpbin.org/get").responseJSON { (response) in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }        }
    }


}

