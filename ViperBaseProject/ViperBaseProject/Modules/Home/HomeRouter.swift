//
//  HomeRouter.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//

import UIKit

class HomeRouter {

    private weak var mainRouter: MainRouter?
    private var presenter: HomePresenter?
    private var interactor: HomeInteractor?
    private let view: HomeView

    init(withMainRouter mainRouter: MainRouter, view: HomeView) {
        self.view = view
        self.mainRouter = mainRouter
        interactor = HomeInteractor()
        presenter = HomePresenter(view: view, router: self, interactor: interactor)
        view.eventHandler = presenter
    }
}

// MARK: - Wireframe

extension HomeRouter: Wireframe {

    func viewController() -> UIViewController {
        return view
    }
}

// MARK: - HomeRouter

extension HomeRouter: HomeWireframe {

}
