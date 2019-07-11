//
//  MyLoginViewController.swift
//  ClassX
//
//  Created by stu-31 on 2019/7/11.
//  Copyright © 2019 stu-31123. All rights reserved.
//

import UIKit

class MyLoginViewController: UIViewController , UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard
            //条件
            let 输入的文字 = textField.text
            ,//或
            let rangeOfTextToReplace = Range(range, in: 输入的文字)
            //条件
            
            //条件不成立
            else
        {
            return false
        }
        //条件不成立
        
        //条件成立
        let substringToReplace = 输入的文字[rangeOfTextToReplace]
        let count = 输入的文字.count - substringToReplace.count + string.count
        
        print("tag:\(textField.tag)")
        
        if textField.tag == 1{
            return count <= 5
            //条件成立
        }
        else if textField.tag == 2{
            return count <= 7
        }
        return false
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
