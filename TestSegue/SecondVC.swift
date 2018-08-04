//
//  SecondVC.swift
//  TestSegue
//
//  Created by Victor Lee on 4/8/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBAction func backtofirst(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purple
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FirstController
        destinationVC.labelData = "Hey I just came from your Second VC!"
        print("passing this data back to First ViewController: \(destinationVC.labelData)")
    }
}
