// Copyright © 2019 ChouTi. All rights reserved.

import ChouTi
import UIKit

class MenuPageDemoViewController: UIViewController {
    let viewControllers: [UIViewController] = {
        [0, 1, 2, 3, 4, 5].map { DummyViewController(label: "vc\($0)") }
    }()

    let menuPageViewController = MenuPageViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        menuPageViewController.menuView.spacingsBetweenMenus = 60

        menuPageViewController.dataSource = self
        menuPageViewController.delegate = self

        menuPageViewController.selectedIndex = 4

        addChild(menuPageViewController)
        let frame = menuPageViewController.view.frame
        menuPageViewController.view.frame = CGRect(x: frame.origin.x, y: frame.origin.y + 22 + 44, width: frame.width, height: frame.height - 20 - 44)
        view.addSubview(menuPageViewController.view)
        menuPageViewController.didMove(toParent: self)
    }
}

extension MenuPageDemoViewController: MenuPageViewControllerDataSource {
    func numberOfMenusInMenuPageViewController(_: MenuPageViewController) -> Int {
        return viewControllers.count
    }

    func menuPageViewController(_: MenuPageViewController, menuViewForIndex index: Int, contentView: UIView?) -> UIView {
        let labelBackgroundView = UIView()
        labelBackgroundView.backgroundColor = UIColor.random()

        let label = UILabel()
        label.text = "Title \(index)"
        label.translatesAutoresizingMaskIntoConstraints = false

        labelBackgroundView.addSubview(label)

        if let contentView = contentView {
            labelBackgroundView.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(labelBackgroundView)

            labelBackgroundView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            labelBackgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
            labelBackgroundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            labelBackgroundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true

            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        }

        return label
    }

    func menuPageViewController(_: MenuPageViewController, viewControllerForIndex index: Int) -> UIViewController {
        return viewControllers[index]
    }
}

extension MenuPageDemoViewController: MenuPageViewControllerDelegate {
    func menuPageViewController(_: MenuPageViewController, menuWidthForIndex _: Int) -> CGFloat {
        return 50
    }

    func menuPageViewController(_: MenuPageViewController, didSelectIndex _: Int, selectedViewController _: UIViewController) {
        //
    }
}
