//
//  ViewController.swift
//  autolayout
//
//  Created by Mikaela Caron on 2/15/19.
//  Copyright © 2019 Mikaela Caron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //avoid polluting viewDidLoad()
    // {} is referred to as a closure, or anonymous functions
    // () at the end calls the closure
    let bearImageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        
        //Enables AutoLayout for our imageView, MUST HAVE
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add views to the main view
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
        
        
    }//end viewDidLoad()
    
    private func setupLayout() {
        
        //Set AutoLayout constraints
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }


}//end ViewController

