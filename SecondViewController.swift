//
//  SecondViewController.swift
//  Json Parsing
//
//  Created by Swapnil Kadam on 22/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lbl_alpha3code: UILabel!
    
    @IBOutlet weak var lbl_nativeName: UILabel!
    
    @IBOutlet weak var lbl_region: UILabel!
    
    @IBOutlet weak var lbl_subregion: UILabel!
    
    
    var stralpha3code = ""
    var strnativeName = ""
    var strregion = ""
    var strSubregion = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_region.text = strregion
        lbl_alpha3code.text = stralpha3code
        lbl_nativeName.text = strnativeName
        lbl_subregion.text = strSubregion
        // Do any additional setup after loading the view.
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
