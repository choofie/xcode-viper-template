//
//  HomePresenter.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//

import Foundation

class HomePresenter {

    private weak var view: HomeView?
    private weak var router: HomeWireframe?
    private weak var interactor: HomeInteractor?

    init(view: HomeView, router: HomeWireframe, interactor: HomeInteractor?) {
        self.view = view
        self.router = router
        self.interactor = interactor
        interactor?.presenter = self
    }
}

// MARK: - HomeEventHandler

extension HomePresenter: HomeEventHandler {

    func viewDidLoad() {
        // TODO: Do something in viewDidLoad()
        print("TODO: Do something in \(#function)")
    }
}

// MARK: - HomeInteractorDelegate

extension HomePresenter: HomeInteractorDelegate {

}
