//
//  TableViewRow.swift
//  Pods
//
//  Created by Honghao Zhang on 2015-12-02.
//
//

import Foundation

public struct TableViewRow : TableViewRowType {
	public var title: String?
	public var subtitle: String?
	public var cellInitialization: ((NSIndexPath, UITableView) -> UITableViewCell)?
	public var cellConfiguration: ((NSIndexPath, UITableViewCell, UITableView) -> Void)?
	public var cellSelectAction: ((NSIndexPath, UITableViewCell?, UITableView) -> Void)?
	public var cellDeselectAction: ((NSIndexPath, UITableViewCell?, UITableView) -> Void)?
	public var willDisplayCell: ((NSIndexPath, UITableViewCell, UITableView) -> Void)?
    
	public init() {
		setupDefaultCellConfiguration()
	}
	
	public init(title: String? = nil,
	            subtitle: String? = nil,
	            cellInitialization: ((NSIndexPath, UITableView) -> UITableViewCell)? = nil,
	            cellConfiguration: ((NSIndexPath, UITableViewCell, UITableView) -> Void)? = nil,
	            cellSelectAction: ((NSIndexPath, UITableViewCell?, UITableView) -> Void)? = nil,
	            cellDeselectAction: ((NSIndexPath, UITableViewCell?, UITableView) -> Void)? = nil,
	            willDisplayCell: ((NSIndexPath, UITableViewCell, UITableView) -> Void)? = nil) {
		self.title = title
		self.subtitle = subtitle
		
		self.cellInitialization = cellInitialization
		
		if let cellConfiguration = cellConfiguration {
			self.cellConfiguration = cellConfiguration
		} else {
			setupDefaultCellConfiguration()
		}
		
		self.cellSelectAction = cellSelectAction
		self.cellDeselectAction = cellDeselectAction
        self.willDisplayCell = willDisplayCell
	}
	
	private mutating func setupDefaultCellConfiguration() {
		self.cellConfiguration = { indexPath, cell, tableView in
			cell.textLabel?.text = self.title
			cell.detailTextLabel?.text = self.subtitle
			cell.detailTextLabel?.textColor = UIColor(white: 0.25, alpha: 1.0)
		}
	}
}
