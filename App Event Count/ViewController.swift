//
//  ViewController.swift
//  App Event Count
//
//  Created by Paige Stephenson on 3/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
 
   
    var willConnectCount = 0
    var becameActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }

    
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "The app has configured for connecting \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "The app connected \(willConnectCount) time(s)"
        didBecomeActiveLabel.text = "The app has become active \(becameActiveCount) time(s)"
        willResignActiveLabel.text = "The app has resigned active \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "The app will enter the foreground \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "The app entered the background \(didEnterBackgroundCount) time(s)"
    }

}

