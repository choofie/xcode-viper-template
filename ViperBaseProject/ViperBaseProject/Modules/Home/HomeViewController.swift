//
//  HomeViewController.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    weak var eventHandler: HomeEventHandler?

    override func viewDidLoad() {
        super.viewDidLoad()
        eventHandler?.viewDidLoad()
        configureUI()
    }
}

// MARK: - IBActions

private extension HomeViewController {

}

// MARK: - Private Extension

private extension HomeViewController {

    func configureUI() {
        // TODO: Do something in configureUI()
        print("TODO: Do something in \(#function)")
    }
}

// MARK: - HomeView

extension HomeViewController: HomeView {

}
