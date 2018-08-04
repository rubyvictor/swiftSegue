//
//  ViewController.swift
//  TestSegue
//
//  Created by Victor Lee on 4/8/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import UIKit

class FirstController: UIViewController {


    @IBAction func gotosecond(_ sender: Any) {
        performSegue(withIdentifier: "moveNextScreen", sender: self)
    }
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var labelData: String = "I AM YOUR FIRST CONTROLLER"
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        view.backgroundColor = UIColor.lightGray
        
        nameLabel.text = labelData
        setupUI()
    }

    func setupUI(){
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
    
    @IBAction func unwindToFirst(_ sender: UIStoryboardSegue) {
        print("unwinding")
    }
    
}

