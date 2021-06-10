//
//  Context.swift
//  WatchKitMemoryLeak WatchKit Extension
//
//  Created by Maksym Bilan on 09.09.2020.
//  Copyright © 2020 MySwimPro. All rights reserved.
//

import Foundation

class Context: NSObject {

    var name: String

    init(name: String) {
        self.name = name
    }

    deinit {
        print("[Context] Deinit")
    }

}
