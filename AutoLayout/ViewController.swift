//
//  ViewController.swift
//  AutoLayout
//
//  Created by indo gusmas arung samudra on 07/04/19.
//  Copyright © 2019 indo gusmas arung samudra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //let'a avoid polluting viewDidload
    //{} is referred to as closure, or anon, funtions
    
    
    let mountainImg : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "mountain") )
        return imageView
    }()
    
    func mountainImage() -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: "mountain") )
        return imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.backgroundColor = UIColor.red
        //  let imageView = UIImageView(image: UIImage(named: "mountain") )
        view.addSubview(mountainImg)
        setupImage()
        
    }
    
    private func setupImage(){
        // this code for setting position
        //imageView.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        mountainImg.translatesAutoresizingMaskIntoConstraints = false
        mountainImg.centerXAnchor.constraint(equalTo: view.centerXAnchor) .isActive = true
        mountainImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        mountainImg.widthAnchor.constraint(equalToConstant: 200).isActive = true
        mountainImg.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
}

