// Copyright © 2019 ChouTi. All rights reserved.

import Foundation

/// DropDownMenu data source, this is the vendor for options.
public protocol DropDownMenuDataSource: AnyObject {
    /**
     Get number of options for the drop down menu.

     - parameter dropDownMenu: the drop down menu.

     - returns: number of options, Int.
     */
    func numberOfOptionsInDropDownMenu(_ dropDownMenu: DropDownMenu) -> Int

    /**
     Get option title for option index.

     - parameter dropDownMenu: the drop down menu.
     - parameter index:        option index in option list.

     - returns: title for the option
     */
    func dropDownMenu(_ dropDownMenu: DropDownMenu, optionTitleForIndex index: Int) -> String
}

@objc public protocol DropDownMenuDelegate: AnyObject {
    /**
     Tells the delegate that a specified row is about to be selected.

     - parameter dropDownMenu: the drop down menu.
     - parameter index:        option index in option list.
     */
    @objc
    optional func dropDownMenu(_ dropDownMenu: DropDownMenu, willSelectIndex index: Int)

    /**
     Tells the delegate that the specified row is now selected.

     - parameter dropDownMenu: the drop down menu.
     - parameter index:        option index in option list.
     */
    @objc
    optional func dropDownMenu(_ dropDownMenu: DropDownMenu, didSelectIndex index: Int)

    /**
     Tells the delegate that the drop down menu is about to expand.

     - parameter dropDownMenu: the drop down menu.
     */
    @objc
    optional func dropDownMenuWillExpand(_ dropDownMenu: DropDownMenu)

    /**
     Tells the delegate that the drop down menu has expanded.

     - parameter dropDownMenu: the drop down menu.
     */
    @objc
    optional func dropDownMenuDidExpand(_ dropDownMenu: DropDownMenu)

    /**
     Tells the delegate that the drop down menu is about to collapse.

     - parameter dropDownMenu: the drop down menu.
     */
    @objc
    optional func dropDownMenuWillCollapse(_ dropDownMenu: DropDownMenu)

    /**
     Tells the delegate that the drop down menu has collapsed.

     - parameter dropDownMenu: the drop down menu.
     */
    @objc
    optional func dropDownMenuDidCollapse(_ dropDownMenu: DropDownMenu)
}
