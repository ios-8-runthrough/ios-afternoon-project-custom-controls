//
//  CustomControl.swift
//  CustomControls
//
//  Created by Alex Shillingford on 8/13/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class CustomControl: UIControl {
//    var value: Int = 1
    var labelArray: [UILabel] = []
    private let componentDimension: CGFloat = 40.0
    private let componentCount = 5
    private let componentActiveColor = UIColor.black
    private let componentInactiveColor = UIColor.gray
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
        setup()
    }
    
    func setup() {
        for starIndex in 0..<componentCount {
            let starWidth = componentDimension
            var xValue: CGFloat = 0.0
            xValue = (starWidth * CGFloat(starIndex)) + 8.0 + (8.0 * CGFloat(starIndex))
            print(xValue)
            
            let label = UILabel(frame: CGRect(x: CGFloat(xValue), y: CGFloat(0.0), width: componentDimension, height: componentDimension))
            label.font = .boldSystemFont(ofSize: 32.0)
            label.text = "☆"
            if label.tag == 0 {
                label.textColor = componentActiveColor
            } else {
                label.textColor = componentInactiveColor
            }
//            label.text = "★"
            label.tag = starIndex
            labelArray.append(label)
            addSubview(label)
        }
    }
    
    override var intrinsicContentSize: CGSize {
        let componentsWidth = CGFloat(componentCount) * componentDimension
        let componentsSpacing = CGFloat(componentCount + 1) * 8.0
        let width = componentsWidth + componentsSpacing
        return CGSize(width: width, height: componentDimension)
    }
}
