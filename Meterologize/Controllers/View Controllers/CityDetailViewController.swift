//
//  CityDetailViewController.swift
//  Meterologize
//
//  Created by Karl Pfister on 8/19/21.
//

import UIKit

class CityDetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var currentStatusLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var projectedHighLabel: UILabel!
    @IBOutlet weak var projectedLowLabel: UILabel!
    
    // Receiver
    var city: City?
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Methods
    func updateViews() {
        guard let city = city else { return }
        self.view.backgroundColor = city.currentTemp <= 80.0 ? .cyan : .red
        cityNameLabel.text = city.name
        currentStatusLabel.text = city.currentStatus
        currentTempLabel.text = "\(city.currentTemp)F"
        projectedHighLabel.text = "High: \(city.dailyHigh)"
        projectedLowLabel.text = "Low: \(city.dailyHigh)"
    }
} // End of Class
