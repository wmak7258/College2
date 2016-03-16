//
//  SecondViewController.swift
//  CollegeProfileBuilder
//
//  Created by student1 on 2/25/16.
//  Copyright © 2016 John Hersey High school. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var collegeName: UILabel!
    @IBOutlet weak var collegeLocation: UITextField!
    @IBOutlet weak var collegeStudents: UITextField!
    @IBOutlet weak var webAddress: UITextField!
    @IBOutlet weak var webButton: UIButton!
    
    var passData = college()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collegeLocation.delegate = self
        self.collegeStudents.delegate = self
        self.navigationItem.title = passData.name
        collegeName.text = passData.name
        collegeLocation.text = passData.location
        collegeStudents.text = passData.numberOfStudents
        image.image = passData.image
        webAddress.text = passData.web
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        passData.location = collegeLocation.text!
        passData.numberOfStudents = collegeStudents.text!
        return true
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let next = segue.destinationViewController as! WebViewController
        next.passData2 = passData
    }

}
