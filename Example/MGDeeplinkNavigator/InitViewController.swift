//
//  TestViewController.swift
//  DeeplinkNavigator
//
//  Created by Hanguang on 14/03/2017.
//  Copyright © 2017 Hanguang. All rights reserved.
//

import UIKit
import MGDeeplinkNavigator

final class InitViewController: UIViewController, Titlable {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = identifier
        view.backgroundColor = UIColor.blue
    }
}

extension InitViewController: InitNavigable {
    convenience init?(navigation: DeeplinkNavigation) {
        print(navigation)
        self.init()
    }
}
