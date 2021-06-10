//
//  FirstInterfaceController.swift
//  WatchKitMemoryLeak WatchKit Extension
//
//  Created by Maksym Bilan on 09.09.2020.
//  Copyright © 2020 MySwimPro. All rights reserved.
//

import WatchKit
import Foundation

class FirstInterfaceController: WKInterfaceController {

    var context: Context!

    deinit {
        print("[FirstInterfaceController] Deinit")
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        self.context = context as? Context
        print("[FirstInterfaceController] Passed context succesfully: \(self.context?.name ?? "unknown")")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func goBackButtonAction() {
        WKInterfaceController.reloadRootPageControllers(withNames: ["main"], contexts: nil, orientation: .horizontal, pageIndex: 0)
    }

}
