//
//  SignViewController.swift
//  exam1
//
//  Created by wusuchen on 2015/12/25.
//  Copyright © 2015年 Digle. All rights reserved.
//

import UIKit

class SignViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    var textSignInto = [String]()


    @IBAction func textFieldSign(sender: UITextField) {
    }

    @IBOutlet weak var textFieldSign: UITextField!
    
    @IBOutlet weak var signLabelresult: UILabel!

    @IBAction func signSendButton(sender: AnyObject) {

            let name = self.textFieldSign.text!
            if textSignInto.count < 3 {
            textSignInto.append(name)
            print("\(textSignInto)")
                }
                if textSignInto.count == 1 {
                    self.signLabelresult.text = "\(textSignInto[0])\n"
                    print("1sdafdsafd\n sdfjdsla")
                }
                if textSignInto.count == 2 {
                    self.signLabelresult.text = "\(textSignInto[0])\n\(textSignInto[1])\n"
                    print("2")
                }
                if textSignInto.count == 3 {
                    self.signLabelresult.text = "\(textSignInto[0])\n\(textSignInto[1])\n\(textSignInto[2])\n"
                    print("3")
                }
            
                
        
    }


    
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
