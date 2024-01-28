//
//  UIButton.Configuration+Extension.swift
//  AssignmentNetflix
//
//  Created by Jaehui Yu on 1/28/24.
//

import UIKit

extension UIButton.Configuration {
    static func largeStyle(title: String, image: String, foreground: UIColor, background: UIColor) -> UIButton.Configuration {
        var config = UIButton.Configuration.filled()
        var titleAttr = AttributedString.init(title)
        titleAttr.font = .systemFont(ofSize: 13, weight: .semibold)
        config.attributedTitle = titleAttr
        
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 13, weight: .regular)
        config.image = UIImage(systemName: image, withConfiguration: imageConfig)
        config.imagePadding = 10
        
        config.baseBackgroundColor = background
        config.baseForegroundColor = foreground
        
        config.cornerStyle = .large
        
        return config
    }
    
    static func capsuleStyle(title: String, image: String) -> UIButton.Configuration {
        var config = UIButton.Configuration.filled()
        var titleAttr = AttributedString.init(title)
        titleAttr.font = .systemFont(ofSize: 12, weight: .regular)
        config.attributedTitle = titleAttr
        
        config.image = UIImage(named: image)
        config.imagePadding = 5
                        
        config.baseBackgroundColor = .black
        config.baseForegroundColor = .white
        
        config.background.strokeColor = .lightGray
        config.background.strokeWidth = 1
        
        config.cornerStyle = .capsule
        config.buttonSize = .mini
        
        return config
    }
    
    static func smallStyle(title: String, foreground: UIColor, background: UIColor) -> UIButton.Configuration {
        var config = UIButton.Configuration.filled()
        var titleAttr = AttributedString.init(title)
        titleAttr.font = .systemFont(ofSize: 18, weight: .semibold)
        config.attributedTitle = titleAttr
        
        config.baseBackgroundColor = background
        config.baseForegroundColor = foreground
        
        config.cornerStyle = .small
        
        return config
    }
}
