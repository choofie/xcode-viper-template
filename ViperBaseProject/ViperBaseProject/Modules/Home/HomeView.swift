//
//  HomeView.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//

import UIKit

protocol HomeView: UIViewController {

    var eventHandler: HomeEventHandler? { get set }
}
