//
//  ViewController.swift
//  JsonManipulation
//
//  Created by Lucas Pinheiro Almeida on 07/12/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func doGetJson() {
        let url = URL(string: "https://www.blockchain.com/ticker")!
        
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    print("Fail")
                }
                return
            }
            do {
                let decode = try JSONDecoder().decode(Bitcoin.self, from: data)
                DispatchQueue.main.async {
                    print(decode.CAD)
                }
            } catch let parsinError {
                print("Error", parsinError)
            }
        }
        
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        doGetJson()
    }


}

