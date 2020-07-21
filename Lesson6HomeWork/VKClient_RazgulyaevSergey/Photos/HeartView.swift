//
//  HeartView.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 14.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class HeartView: UIControl {
    @IBOutlet weak var heartLabel: UILabel!
    
    let heartImage = UIImageView()
    var image = UIImage()
    var heartCount: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configure()
    }
    
    func configure() {
        heartImage.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        heartImage.contentMode = .scaleAspectFit
        addSubview(heartImage)
        heartImage.image = UIImage(named: "HeartNo")
        heartLabel.text = "0"
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        addGestureRecognizer(recognizer)
    }
    
    @objc func onTap(_ sender: Any?) {
        if heartCount == 0 {
            heartImage.image = UIImage(named: "HeartYes")
            heartCount = 1
            heartLabel.text = "1"
            setNeedsDisplay()
        } else {
            heartImage.image = UIImage(named: "HeartNo")
            heartCount = 0
            heartLabel.text = "0"
            setNeedsDisplay()
        }
    }
}
