//
//  ViewController.swift
//  ios-swift-random-photo
//
//  Created by Ashutosh Mohapatra on 19/09/21.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
       return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
    }


}

