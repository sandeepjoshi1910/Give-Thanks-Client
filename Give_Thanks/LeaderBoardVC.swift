//
//  LeaderBoardVC.swift
//  Give_Thanks
//
//  Created by Sandeep Joshi on 2/10/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import UIKit

class LeaderBoardVC: ViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var categoryTextField: UITextField!
    @IBOutlet weak var categoryPickerView: UIPickerView!
    @IBOutlet weak var tableView: UITableView!
    var noOfItems = 5

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("LeaderBoardTableCell", owner: self, options: nil)?.first as! LeaderBoardCell
        cell.userIconView.image = UIImage(named: "bill")
        cell.userIconView.layer.cornerRadius = cell.userIconView.layer.frame.width/2.0
        cell.userIconView.clipsToBounds = true
        cell.userIconView.layer.borderColor = UIColor.black.cgColor
        cell.userIconView.layer.borderWidth = 1.7
        cell.userNameLabel.text = "Bil Gates"
        cell.userDonationLabel.text = "$25000"
        
        return cell as UITableViewCell
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        categoryPickerView.dataSource = self
        categoryPickerView.delegate = self
        categoryPickerView.isHidden = true
        categoryPickerView.backgroundColor = UIColor(red: 68/255.0, green: 65/255.0, blue: 90/255.0, alpha: 0.7)

        self.categoryTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        let string = "Category"
        
        return NSAttributedString(string: string, attributes: [NSAttributedStringKey.foregroundColor:UIColor.white])
    }

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        self.categoryPickerView.isHidden = true
        return "category"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.categoryTextField.text = "Category"
        self.categoryPickerView.isHidden = true
    }


    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.categoryPickerView.isHidden = false
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
