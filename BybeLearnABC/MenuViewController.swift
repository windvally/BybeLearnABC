//
//  MenuViewController.swift
//  BybeLearnABC
//
//  Created by WangWei on 16/1/23.
//  Copyright © 2016年 WangWei. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var getVar:String?

    @IBOutlet weak var menuLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is in menuview")
        
        
        
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        menuLabel = UILabel.init()
//        
//        self.view.addSubview(menuLabel)
//        menuLabel.text = "menu view"
//        menuLabel.center.x = self.view.center.x
//        menuLabel.center.y = self.view.center.y

        
        
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
