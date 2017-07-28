//
//  StatesDetailViewController.swift
//  TheStates
//
//  Created by Jaylin Phipps on 7/27/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class StatesDetailViewController: UIViewController {
    
    var states: TheStates?
    
    @IBOutlet weak var statePhotoBackground: UIImageView!
    @IBOutlet weak var stateCaptialLabel: UILabel!
    @IBOutlet weak var stateDescripion: UITextView!
    @IBOutlet weak var statePopLabel: UILabel!
    @IBOutlet weak var stateNameLabel: UILabel!
    @IBOutlet weak var statePhotoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        stateCaptialLabel.text = states?.capital
        stateDescripion.text = states?.description
        statePopLabel.text = states?.population
        stateNameLabel.text = states?.title
        statePhotoImageView.image = states?.classification.image
        statePhotoBackground.image = states?.classification.image
        
        
        self.title = states?.title
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
