//
//  ViewController.swift
//  LeviExtension
//
//  Created by LeviTsai on 2018/8/30.
//  Copyright © 2018年 LeviTsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func activityCompleteBlock( activityType: UIActivityType?, completed: Bool, returnedItems: [Any]?, activityError: Error?) -> Void {
    
//        let activity = UIActivityViewController(activityItems: [UIImage(named: "smile.png")], applicationActivities: nil)
//        activity.excludedActivityTypes = [UIActivityType.airDrop]
//        activity.completionWithItemsHandler = activityCompleteBlock
//
//        print(activity.modalTransitionStyle.rawValue)
//        print(activity.modalPresentationStyle.rawValue)
//
//        activity.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//
//
//        self.present(activity, animated: true) {
//            print("complete")
//        }
    }
    
    @IBAction func stringExtesnionAction(_ sender: Any) {
        
        let items = ["a", "b"]
        
        let activity = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activity.excludedActivityTypes = [UIActivityType.airDrop]
        activity.completionWithItemsHandler = activityCompleteBlock
        
        self.present(activity, animated: true) {
            print("complete")
        }
    }
    
    @IBAction func urlExtesnionAction(_ sender: Any) {
        
        let items = [URL(string: "https://www.google.com.tw")]
        
        let activity = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activity.excludedActivityTypes = [UIActivityType.airDrop]
        activity.completionWithItemsHandler = activityCompleteBlock
        
        self.present(activity, animated: true) {
            print("complete")
        }
    }
    
    @IBAction func imageExtesnionAction(_ sender: Any) {
        
        let items = [UIImage(named: "smile.png")]
        
        let activity = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activity.excludedActivityTypes = [UIActivityType.airDrop]
        activity.completionWithItemsHandler = activityCompleteBlock
        
        self.present(activity, animated: true) {
            print("complete")
        }
    }
    
    
    
}

