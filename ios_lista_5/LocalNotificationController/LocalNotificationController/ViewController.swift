//
//  ViewController.swift
//  LocalNotificationController
//
//  Created by Matt on 14/11/2023.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    var messageSubtitle = "Spotkanie za 20 minut"
    
    @IBAction func sendNotification(_ sender: Any) {
        sendNotification()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options:
                                                                    [[.alert, .sound, .badge]],
                                                                
                                                                completionHandler: { (granted, error) in
            // Handle Error
        })
    }
    
    func sendNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Przypominajka"
        content.subtitle = messageSubtitle
        content.body = "Nie zapomnij wziąć ze sobą kawy!"
        content.badge = 1
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3,
                                                        repeats: false)
        let requestIdentifier = "demoNotification"
        let request = UNNotificationRequest(identifier: requestIdentifier,
                                            content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request,
                                               
                                               withCompletionHandler: { (error) in
            
            // Handle error
            
        })
    }
    
}

