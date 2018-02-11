//
//  DashboardVC.swift
//  Give_Thanks
//
//  Created by Sandeep Joshi on 2/10/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import UIKit
import Charts
import ChartProgressBar

class DashboardVC: ViewController {
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var memberSince: UILabel!
    @IBOutlet weak var donations: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var chart: ChartProgressBar!
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
        
        // Load data into chartprogressbar
        var data: [BarData] = []
        
        data.append(BarData.init(barTitle: "Jan", barValue: 1.4, pinText: "1.4 €"))
        data.append(BarData.init(barTitle: "Feb", barValue: 10, pinText: "10 €"))
        data.append(BarData.init(barTitle: "Mar", barValue: 3.1, pinText: "3.1 €"))
        data.append(BarData.init(barTitle: "Apr", barValue: 4.8, pinText: "4.8 €"))
        data.append(BarData.init(barTitle: "May", barValue: 6.6, pinText: "6.6 €"))
        data.append(BarData.init(barTitle: "Jun", barValue: 7.4, pinText: "7.4 €"))
        data.append(BarData.init(barTitle: "Jul", barValue: 5.5, pinText: "5.5 €"))
        
        chart.data = data
        chart.barsCanBeClick = true
        chart.maxValue = 10.0
        chart.emptyColor = UIColor.clear
        chart.barWidth = 7
        // chart.progressColor = UIColor.init(hexString: "99ffffff")
        chart.progressColor = UIColor(red:0.60, green:1.00, blue:1.00, alpha:1.0)
        chart.progressClickColor = UIColor(red:0.95, green:0.57, blue:0.17, alpha:1.0)
        chart.pinBackgroundColor = UIColor(red:0.89, green:0.20, blue:0.37, alpha:1.0)
        chart.pinTxtColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
        chart.barTitleColor = UIColor(red:0.71, green:0.74, blue:0.84, alpha:1.0)
        chart.barTitleSelectedColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
        chart.pinMarginBottom = 15
        chart.pinWidth = 70
        chart.pinHeight = 29
        chart.pinTxtSize = 17
        chart.delegate = self
        chart.build()
        
        chart.disableBar(at: 3)
        
        let when = DispatchTime.now() + 6 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.chart.enableBar(at: 3)
        }
        
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

extension DashboardVC: ChartProgressBarDelegate {
    func ChartProgressBar(_ chartProgressBar: ChartProgressBar, didSelectRowAt rowIndex: Int) {
        print(rowIndex)
    }
}
