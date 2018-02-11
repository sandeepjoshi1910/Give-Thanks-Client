//
//  LeaderBoardVC.swift
//  Give_Thanks
//
//  Created by Sandeep Joshi on 2/10/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import UIKit

class LeaderBoardVC: ViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {

    var noOfItems = 5

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("LeaderBoardCell", owner: self, options: nil)?.first as! LeaderBoardCell
        cell.userIconView.image = UIImage(named: "Bill")
        cell.userIconView.layer.cornerRadius = cell.userIconView.layer.frame.width/2.0
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
