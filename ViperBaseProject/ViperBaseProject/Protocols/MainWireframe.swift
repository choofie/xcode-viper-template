//
//  MainWireframe.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//

import UIKit

protocol MainWireframe: class {

    func pushScreen(_ screen: Screen, payload: Any?)
    func popWireframe(_ wireframe: Wireframe, toRoot isPopToRoot: Bool)
}

// MARK: - Protocol Extension

extension MainWireframe {

    func pushScreen(_ screen: Screen, payload: Any? = .none) {
        pushScreen(screen, payload: payload)
    }

    func popWireframe(_ wireframe: Wireframe, toRoot isPopToRoot: Bool = false) {
        popWireframe(wireframe, toRoot: isPopToRoot)
    }
}
