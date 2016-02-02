//
//  ViewController.swift
//  BybeLearnABC
//
//  Created by WangWei on 16/1/18.
//  Copyright © 2016年 WangWei. All rights reserved.
//

import UIKit

class LogoViewController: UIViewController {

    @IBOutlet weak var bgImageView: UIImageView!

    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    @IBOutlet weak var label03: UILabel!
    @IBOutlet weak var label04: UILabel!
    @IBOutlet weak var label05: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        label01.center.x = self.view.center.x
        label01.center.y = -80
        label01.alpha = 0.0
        label02.center.x = self.view.center.x
        label02.center.y = -80
        label03.center.x = self.view.center.x
        label03.center.y = -80
        label04.center.x = self.view.center.x
        label04.center.y = -80
        label05.center.x = self.view.center.x
        label05.center.y = -80
        
        bgImageView.center = self.view.center
        bgImageView.bounds = self.view.bounds
    
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let duration = GlobalConfig.logo_var.animate_duration
        let delay = GlobalConfig.logo_var.animate_delay
        let start = GlobalConfig.logo_var.animate_start
        
        UIView.animateWithDuration(duration,delay:start,
           // usingSpringWithDamping:0.1,initialSpringVelocity:0.0,
            options:[.CurveEaseIn], animations: {
            self.label01.center.x = self.view.bounds.width/10*1.6
            self.label01.center.y = self.view.bounds.height/2
            self.label01.alpha = 1.0
        },completion:nil)
        
        UIView.animateWithDuration(duration,delay:start+delay,options:[.CurveEaseIn], animations: {
            self.label02.center.x = self.view.bounds.width/10*3.3
            self.label02.center.y = self.view.bounds.height/2
            
            },completion:nil)

        UIView.animateWithDuration(duration,delay:start+delay*2,options:[.CurveEaseIn], animations: {
            self.label03.center.x = self.view.bounds.width/2
            self.label03.center.y = self.view.bounds.height/2
            },completion:nil)
        
        UIView.animateWithDuration(duration,delay:start+delay*3,options:[.CurveEaseIn], animations: {
            self.label04.center.x = self.view.bounds.width/10*6.7
            self.label04.center.y = self.view.bounds.height/2
            },completion:nil)
        
        UIView.animateWithDuration(duration,delay:start+delay*4,options:[.CurveEaseIn], animations: {
            self.label05.center.x = self.view.bounds.width/10*8.4
            self.label05.center.y = self.view.bounds.height/2
            },completion:{(finished:Bool) -> Void in
                self.jump()
                
        })
    }
    
    func moveLabel(label1:UILabel,label2:UILabel){
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        view.removeConstraints(view.constraints)
        
        view.translatesAutoresizingMaskIntoConstraints = true
        
    }
    
    func jump(){
        print("jump is loaded")
        
         self.dismissViewControllerAnimated(true, completion: nil)
         self.performSegueWithIdentifier("toMenuVC", sender:nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toMenuVC" {
            
        let menuViewController = segue.destinationViewController as! MenuViewController
            menuViewController.getVar = "auto jump"
        }
        

    }

    

}

