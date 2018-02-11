//
//  DashboardVC.swift
//  Give_Thanks
//
//  Created by Sandeep Joshi on 2/10/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import UIKit
import Charts

class DashboardVC: ViewController {
    
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var memberSince: UILabel!
    @IBOutlet weak var donations: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var barView: BarChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.borderWidth = 1.5
        profileImageView.clipsToBounds = true
        profileImageView.image = UIImage(named: "bill")
        
        user.text = "bill@MSFT"
        memberSince.text = "2007"
        donations.text = "$15,000"
        name.text = "Bill Gates"
        
        
        //        var dataEntries: [BarChartDataEntry] = []
        //
        //        for i in 0..<35 {
        //            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(arc4random_uniform(42)))
        //            dataEntries.append(dataEntry)
        //        }
        //        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Visitor count")
        //        let chartData = BarChartData(dataSet: chartDataSet)
        //        barView.data = chartData
        //
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
