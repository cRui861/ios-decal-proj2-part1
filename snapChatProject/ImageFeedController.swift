//
//  ImageFeedController.swift
//  snapChatProject
//
//  Created by Rena Chen on 3/12/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class ImageFeedController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threads[threadNames[section]]!.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return threadNames.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "viewFeedCell", for: indexPath) as! imageFeedTableViewCell
        cell.hasRead.image = #imageLiteral(resourceName: "unread")
        cell.whoRead.text = "Ichirou"
        cell.timeRead.text = "1 Minute"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
