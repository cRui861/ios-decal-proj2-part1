//
//  ImageFeedController.swift
//  snapChatProject
//
//  Created by Rena Chen on 3/12/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class ImageFeedController: UITableView {
    
    var testingNum = 5
    //var sectionTitles = ["Memes", "Dog Spots", "Random"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testingNum //this will be changed but is being bitchy
        // return thread[section].count doesn't work lol 
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toPicture", for: indexPath) as! imageFeedTableViewCell
        cell.hasRead.image = #imageLiteral(resourceName: "unread")
        cell.whoRead.text = "Ichirou"
        cell.timeRead.text = "1 Minute"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
