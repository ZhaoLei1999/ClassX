//
//  ViewController.swift
//  ClassX
//
//  Created by stu-31 on 2019/7/11.
//  Copyright © 2019 stu-31123. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        //print(responseString)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: NSNotification.Name(rawValue: "response.received"), object: nil)
        
        
        
        let work : AsyncRequestWorker = AsyncRequestWorker()
        
        work . reponseDelegate = self
        
        work .getResponse(from: "https://google.com", tag: 1)
        
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        
        let word = notification.userInfo!["response"]
        
        print(word)
        
        
//        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
//        print( "猜猜看：  \(keyboardHeight)" )
//
//        btnHiBottomConstraint.constant = keyboardHeight
    }
}

