//
//  ImagePostController.swift
//  snapChatProject
//
//  Created by Rena Chen on 3/12/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class ImagePostController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var feed: UILabel!
    @IBOutlet weak var postTableView: UITableView!
    var theImage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postTableView.delegate = self
        postTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! imagePostTableViewCell
        cell.feedsToPost.text = threadNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        feed.text = threadNames[indexPath.row]
    }
    
    @IBAction func goPost(_ sender: UIButton) {
        let alert = UIAlertController(title: "Posted!", message: "Return to post another picture", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
