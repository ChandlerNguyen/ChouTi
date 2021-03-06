// Copyright © 2019 ChouTi. All rights reserved.

import ChouTi
import Foundation

struct ViewsSection: TableViewSectionType {
    var headerTitle: String? = "Views"

    var rows: [TableViewRowType] = {
        [
            TableViewRow(
                title: "Button",
                subtitle: "Different Button Styles",
                cellSelectAction: { indexPath, cell, _ in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(ButtonsDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "Menu View",
                subtitle: "Horizontal Menu View",
                cellSelectAction: { indexPath, cell, _ in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(MenuViewDemoController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "📷 Image Picker",
                subtitle: "Image Selection View",
                cellSelectAction: { indexPath, cell, _ in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(ImagePickerDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "Drop Down Menu",
                cellSelectAction: { indexPath, cell, _ in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(DropDownMenuDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "📅 Date Picker",
                subtitle: "A Slide Up Date Picker View Controller",
                cellSelectAction: { indexPath, cell, _ in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(DatePickerControllerDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "Navigation Bar with Status Bar",
                subtitle: "Drop down style status bar under navigation bar",
                cellSelectAction: { indexPath, cell, _ -> Void in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(NavigationBarStatusBarDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "Search Text Field",
                cellSelectAction: { indexPath, cell, _ -> Void in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(SearchTextFieldDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "⚠️ Alert Controller",
                cellSelectAction: { indexPath, cell, _ in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(AlertControllerDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "Page Control",
                subtitle: "Custom PageControl",
                cellSelectAction: { indexPath, cell, _ -> Void in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(PageControlDemoViewController(), sender: nil)
                }
            ),
            TableViewRow(
                title: "TableViewCells Demo",
                subtitle: "Various TableViewCells in ChouTi",
                cellSelectAction: { indexPath, cell, _ -> Void in
                    cell?.tableView?.deselectRow(at: indexPath, animated: true)
                    cell?.tableView?.presentingViewController?.show(TableViewCellsDemoVC(), sender: nil)
                }
            ),
        ]
    }()
}
