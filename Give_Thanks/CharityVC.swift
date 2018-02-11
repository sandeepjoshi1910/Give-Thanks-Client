//
//  CharityVC.swift
//  Give_Thanks
//
//  Created by Amlaan Bhoi on 2/10/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Foundation
import PieCharts

class CharityVC: ViewController {
    @IBOutlet weak var chartView: PieChart!
    @IBOutlet weak var chartView2: PieChart!
    override func viewDidLoad() {
        print("hello")
        chartView.models = [
            PieSliceModel(value: 2.1, color: UIColor.yellow),
            PieSliceModel(value: 3, color: UIColor.blue),
            PieSliceModel(value: 1, color: UIColor.green)
        ]
        chartView2.models = [
            PieSliceModel(value: 2.1, color: UIColor.yellow),
            PieSliceModel(value: 3, color: UIColor.blue),
            PieSliceModel(value: 1, color: UIColor.green),
            PieSliceModel(value: 3, color: UIColor.gray),
            PieSliceModel(value: 1.5, color: UIColor.brown)
        ]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
