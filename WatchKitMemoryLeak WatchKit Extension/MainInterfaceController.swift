//
//  MainInterfaceController.swift
//  WatchKitMemoryLeak WatchKit Extension
//
//  Created by Maksym Bilan on 09.09.2020.
//  Copyright © 2020 MySwimPro. All rights reserved.
//

import WatchKit
import Foundation


class MainInterfaceController: WKInterfaceController {

    deinit {
        print("[MainInterfaceController] Deinit")
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func test1ButtonAction() {
        let context = Context(name: "context")
        WKInterfaceController.reloadRootPageControllers(withNames: ["first", "second"], contexts: [context, context], orientation: .horizontal, pageIndex: 0)
    }

}
