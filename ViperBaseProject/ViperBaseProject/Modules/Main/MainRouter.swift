//
//  MainRouter.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//

import UIKit

class MainRouter {

    private var mainNavigationController = UINavigationController()
    private var wireframes = [Wireframe]()

    init() {
        pushScreen(.home)
    }
}

// MARK: - Wireframe

extension MainRouter: Wireframe {

    func viewController() -> UIViewController {
        return mainNavigationController
    }
}

// MARK: - MainWireframe

extension MainRouter: MainWireframe {

    func pushScreen(_ screen: Screen, payload: Any?) {
        let wireframe = wireframeForScreen(screen)
        wireframes.append(wireframe)
        mainNavigationController.pushViewController(wireframe.viewController(), animated: true)
        handlePayload(wireframe, payload: payload)
    }

    func popWireframe(_ wireframe: Wireframe, toRoot isPopToRoot: Bool) {

        if isPopToRoot {
            mainNavigationController.popToRootViewController(animated: true)
            guard let wireframe = wireframes.first else { return }
            wireframes = [wireframe]
        } else {
            mainNavigationController.popViewController(animated: true)
            wireframes.removeLast()
        }
    }
}

// MARK: - Private Extension

private extension MainRouter {

    func wireframeForScreen(_ screen: Screen) -> Wireframe {

        switch screen {
        case .home:
            let viewController = UIStoryboard(name: Screen.home.rawValue, bundle: Bundle.main).instantiateInitialViewController() as? HomeView
            return HomeRouter(withMainRouter: self, view: viewController!)
        }
    }

    func handlePayload(_ wireframe: Wireframe, payload: Any?) {

        if let payload = payload, let payloadHandler = wireframe as? PayloadHandler {
            payloadHandler.handlePayload(payload)
        }
    }
}
