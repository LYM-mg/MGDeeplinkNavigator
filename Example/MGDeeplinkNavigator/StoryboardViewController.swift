//
//  ViewController.swift
//  DeeplinkNavigator
//
//  Created by Hanguang on 13/03/2017.
//  Copyright © 2017 Hanguang. All rights reserved.
//

import UIKit
import MGDeeplinkNavigator

final class StoryboardViewController: UIViewController, Titlable {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = identifier
    }
}

extension StoryboardViewController: StoryboardNavigable {
    static func viewControllerFromStoryBoard(navigation: DeeplinkNavigation) -> UIViewController? {
        print(navigation)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: String(describing: self))
        return vc
    }
}
