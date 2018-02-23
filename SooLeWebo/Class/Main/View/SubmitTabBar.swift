//
//  SubmitTabBar.swift
//  SooLeWebo
//
//  Created by songlei on 2018/1/31.
//  Copyright © 2018年 songlei. All rights reserved.
//

import UIKit

class SubmitTabBar: UITabBar {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        ///创建中间的按钮
        let composeButton = UIButton()
        composeButton.setImage(UIImage(named: ""), for: .normal)
        composeButton.setBackgroundImage(UIImage(named: ""), for: .normal)
        composeButton.sizeToFit()
//        composeButton.addTarget(self, action: #selector(composeClick(_:)), for: .touchUpInside)
        
        composeButton.frame.origin = CGPoint(x: 0, y: 0)
        addSubview(composeButton)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let w = 320 / 5
        subviews.dropFirst(2).enumerated().forEach {
            var x = CGFloat($0.offset)
            
            if $0.offset > 1 {
                x += 9
            }
            
            $0.element.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            
        }
    }
    
    

}
