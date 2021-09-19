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
    
    private let button:  UIButton = {
       let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Get Random Photo",for: .normal)
        button.setTitleColor(.black, for: .normal)
       return button
    }()
    
    let bgColors:[UIColor] = [
        .systemTeal,
        .systemRed,
        .systemBlue,
        .systemGreen,
        .systemOrange,
        .systemPurple,
        .systemYellow,
        .systemIndigo
    ]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width - 40, height: 300)
        imageView.center = view.center
        view.addSubview(button)
        getRandomPhoto()
        button.addTarget(self, action: #selector(onTap), for: .touchUpInside)
    }
       
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 30, y: view.frame.height - 100 - view.safeAreaInsets.bottom, width: view.frame.width - 60, height: 60)
    }
 
    @objc func onTap()  {
        view.backgroundColor = bgColors.randomElement()
        getRandomPhoto()
    }
    
    func getRandomPhoto()  {
        let urlString = "https://source.unsplash.com/random/600x600"
        let url = URL(string:urlString)!
        guard let data = try? Data(contentsOf: url) else{
            return
        }
        imageView.image = UIImage(data: data)
    }

    
}

