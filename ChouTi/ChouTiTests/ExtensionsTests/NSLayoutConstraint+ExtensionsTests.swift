//
//  NSLayoutConstraint+ExtensionsTests.swift
//  ChouTi
//
//  Created by Honghao Zhang on 2016-07-05.
//  Copyright © 2016 Honghaoz. All rights reserved.
//

import XCTest
@testable import ChouTi

class NSLayoutConstraint_ExtensionsTests: ChouTiTests {
    func testActivate() {
        let containerView = UIView()
        let view = UIView()
        containerView.addSubview(view)
        
        let constraint = view.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor)
        
        XCTAssertFalse(constraint.active)
        constraint.activate()
        XCTAssertTrue(constraint.active)
    }
    
    func testConstrainToSameLayoutAttributeOnEmpty() {
        let constraints = [].constrainToSame(.Width)
        XCTAssertTrue(constraints.isEmpty)
    }
    
    func testConstrainToSameLayoutAttributeOnCount1() {
        let containerView = UIView()
        
        let v1 = UIView()
        containerView.addSubview(v1)
        
        let views = [v1]
        
        let constraints = views.constrainToSame(.Width)
        XCTAssertTrue(constraints.isEmpty)
    }
    
    func testConstrainToSameLayoutAttributeOnCountTwoAndMore() {
        let containerView = UIView()
        var views: [UIView] = []
        let viewsCount = Int.random(2, 10)
        for _ in 0 ..< viewsCount {
            let view = UIView()
            containerView.addSubview(view)
            views.append(view)
        }
        
        let constraints = views.constrainToSame(.Width)
        XCTAssertEqual(constraints.count, viewsCount - 1)
        
        for (index, constraint) in constraints.enumerate() {
            XCTAssertTrue(constraint.active)
            XCTAssertEqual(constraint.firstItem as? UIView, views[index])
            XCTAssertEqual(constraint.secondItem as? UIView, views[index + 1])
            XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.Width)
            XCTAssertEqual(constraint.firstAttribute, constraint.secondAttribute)
            XCTAssertEqual(constraint.multiplier, 1.0)
            XCTAssertEqual(constraint.constant, 0.0)
        }
    }
}
