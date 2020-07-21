//
//  NewsLike.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 21.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//


import UIKit

class NewsLike: UIControl {
    @IBOutlet weak var newsLikeLabel: UILabel!
    
    let newsLikeImage = UIImageView()
    var image = UIImage()
    var newsLikeCount: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configure()
    }
    
    func configure() {
        newsLikeImage.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        newsLikeImage.contentMode = .scaleAspectFit
        addSubview(newsLikeImage)
        newsLikeImage.image = UIImage(named: "HeartNo")
        newsLikeLabel.text = "0"
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        addGestureRecognizer(recognizer)
    }
    
    @objc func onTap(_ sender: Any?) {
        if newsLikeCount == 0 {
            newsLikeImage.image = UIImage(named: "HeartYes")
            newsLikeCount = 1
            newsLikeLabel.text = "1"
            setNeedsDisplay()
        } else {
            newsLikeImage.image = UIImage(named: "HeartNo")
            newsLikeCount = 0
            newsLikeLabel.text = "0"
            setNeedsDisplay()
        }
    }
}
