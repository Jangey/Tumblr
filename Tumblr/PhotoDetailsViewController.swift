//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Jangey Lu on 9/11/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var photoView: UIImageView!
    
    var posts: [String: Any]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let post = posts {
            if let photos = post["photos"] as? [[String: Any]] {
                // photos is NOT nil, we can use it!
                // TODO: Get the photo url
                // 1.
                let photo = photos[0]
                // 2.
                let originalSize = photo["original_size"] as! [String: Any]
                // 3.
                let urlString = originalSize["url"] as! String
                // 4.
                let url = URL(string: urlString)
            
                photoView.af_setImage(withURL: url!)
            }
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
