//
//  ViewController.swift
//  Quicksand
//
//  Created by Don Mag on 4/9/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let theLabel: UILabel = {
		let v = UILabel()
		v.translatesAutoresizingMaskIntoConstraints = false
		v.backgroundColor = UIColor.cyan
		v.text = "This is a label"
		return v
	}()
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		for family in UIFont.familyNames {
			
			let sName: String = family as String
			print("family: \(sName)")
			
			for name in UIFont.fontNames(forFamilyName: sName) {
				print("name: \(name as String)")
			}
		}

		view.addSubview(theLabel)
		
		guard let customFont = UIFont(name: "QuicksandDash-Regular", size: 32) else {
			fatalError("error")
		}
		theLabel.font = customFont
		
		theLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.0).isActive = true
		theLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0.0).isActive = true

	}


}

