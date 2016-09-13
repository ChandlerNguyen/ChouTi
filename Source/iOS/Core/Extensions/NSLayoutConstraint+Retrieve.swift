//
//  NSLayoutConstraint+Retrieve.swift
//  ChouTi
//
//  Created by Honghao Zhang on 2016-09-09.
//  Copyright © 2016 Honghaoz. All rights reserved.
//

import UIKit

public extension UIView {
	func constraints(withFirstItem firstItem: AnyObject, // TODO: nil or not
                                   firstAttribute: NSLayoutAttribute? = nil,
                                   relation: NSLayoutRelation? = nil,
                                   secondItem: AnyObject? = nil,
                                   secondAttribute: NSLayoutAttribute? = nil,
                                   multiplier: CGFloat? = nil,
                                   constant: CGFloat? = nil) -> [NSLayoutConstraint]
	{
		return constraints.filter {
			let isFirstItem = $0.firstItem === firstItem
			let isFirstAttribute = (firstAttribute == nil) ? true : $0.firstAttribute == firstAttribute
			let isRelation = (relation == nil) ? true : $0.relation == relation
			let isSecondItem = $0.secondItem === secondItem
			let isSecondAttribute = (secondAttribute == nil) ? true : $0.secondAttribute == secondAttribute
			let isMultiplier = (multiplier == nil) ? true : $0.multiplier == multiplier
			let isConstant = (constant == nil) ? true : $0.constant == constant
			
			return isFirstItem && isFirstAttribute && isRelation && isSecondItem && isSecondAttribute && isMultiplier && isConstant
        }
    }
    
    var widthConstraint: NSLayoutConstraint? {
        return constraints(withFirstItem: self, firstAttribute: .Width, relation: .Equal, secondItem: nil, secondAttribute: .NotAnAttribute).first
    }
	
	var heightConstraint: NSLayoutConstraint? {
		return constraints(withFirstItem: self, firstAttribute: .Height, relation: .Equal, secondItem: nil, secondAttribute: .NotAnAttribute).first
	}
}
