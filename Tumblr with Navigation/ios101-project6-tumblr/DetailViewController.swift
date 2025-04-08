//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by vincent Jared on 4/10/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let post = post else { return }

        textView.text = post.caption.trimHTMLTags()

        if let photoUrl = post.photos.first?.originalSize.url {
                    Nuke.loadImage(with: photoUrl, into: imageView)
                }
        self.title = "Post Detail"
        
    }
    

   

}
