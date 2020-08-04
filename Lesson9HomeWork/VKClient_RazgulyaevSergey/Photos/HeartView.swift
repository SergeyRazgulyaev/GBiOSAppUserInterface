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
    var heartCount: Int = Int.random(in: 0...50)
    
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
        heartLabel.text = String(heartCount)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        addGestureRecognizer(recognizer)
    }
    
    @objc func onTap(_ sender: Any?) {
        if heartImage.image == UIImage(named: "HeartNo") {
            heartImage.image = UIImage(named: "HeartYes")
            heartCount += 1
            UIView.transition(with: heartLabel, duration: 0.2, options: .transitionFlipFromRight, animations: {self.heartLabel.text = String(self.heartCount)})
//          old version
//          heartLabel.text = String(heartCount)
            setNeedsDisplay()
        } else {
            heartImage.image = UIImage(named: "HeartNo")
            heartCount -= 1
            UIView.transition(with: heartLabel, duration: 0.2, options: .transitionFlipFromLeft, animations: {self.heartLabel.text = String(self.heartCount)})
//          old version
//          heartLabel.text = String(heartCount)
            setNeedsDisplay()
        }
    }
}
