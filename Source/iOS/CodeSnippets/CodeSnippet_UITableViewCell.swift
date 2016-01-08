//
//  CodeSnippet_UITableViewCell.swift
//  Pods
//
//  Created by Honghao Zhang on 2015-11-20.
//
//

//class <#Cell#>: UITableViewCell {
//	
//	let <#view#> = UIView()

//	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//		super.init(style: style, reuseIdentifier: reuseIdentifier)
//		commonInit()
//	}
//	
//	required init?(coder aDecoder: NSCoder) {
//		super.init(coder: aDecoder)
//		commonInit()
//	}
//	
//	private func commonInit() {
//		setupViews()
//		setupConstraints()
//	}
//
//	private func setupViews() {
//		// TODO: Setup view hierarchy
//		<#view#>.translatesAutoresizingMaskIntoConstraints = false
//		contentView.addSubview(<#view#>)
//	}
//
//	private func setupConstraints() {
//		preservesSuperviewLayoutMargins = false
//		layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//		contentView.preservesSuperviewLayoutMargins = false
//		contentView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//
//		let views = [
//			"view" : <#view#>
//		]
//
//		let metrics: [String : CGFloat] = [
//			"vertical_spacing" : 4.0
//		]
//
//		var constraints = [NSLayoutConstraint]()
//
//		// TODO: Add constraints
//		constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[view]-|", options: [], metrics: metrics, views: views)
//
//		NSLayoutConstraint.activateConstraints(constraints)
//	}
//}
//
//extension <#Cell#> : TableViewCellInfo {
//	class func identifier() -> String {
//		return NSStringFromClass(<#Cell#>.self)
//	}
//	
//	class func estimatedRowHeight() -> CGFloat {
//		return 44.0
//	}
//	
//	class func registerInTableView(tableView: UITableView) {
//		tableView.registerClass(<#Cell#>.self, forCellReuseIdentifier: <#Cell#>.identifier())
//	}
//}




// MARK: - Common Usage
//cell.selectionStyle = .None
