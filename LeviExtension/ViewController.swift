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

    @IBAction func activeActivity(_ sender: Any) {
        
        
        
        
        let activity = UIActivityViewController(activityItems: [UIImage(named: "smile.png")], applicationActivities: nil)
        activity.excludedActivityTypes = [UIActivityType.airDrop]
        activity.completionWithItemsHandler = activityCompleteBlock
        
        self.present(activity, animated: true) {
            print("complete")
        }
        
    }
    
    func activityCompleteBlock( activityType: UIActivityType?, completed: Bool, returnedItems: [Any]?, activityError: Error?) -> Void {
    
    }
    
    @IBAction func sharedAction(_ sender: Any) {
    }
    
}

