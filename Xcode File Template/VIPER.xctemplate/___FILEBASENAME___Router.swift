//___FILEHEADER___

import UIKit

class ___VARIABLE_moduleName___Router {

    private weak var mainRouter: MainRouter?
    private var presenter: ___VARIABLE_moduleName___Presenter?
    private var interactor: ___VARIABLE_moduleName___Interactor?
    private let view: ___VARIABLE_moduleName___View

    init(withMainRouter mainRouter: MainRouter, view: ___VARIABLE_moduleName___View) {
        self.view = view
        self.mainRouter = mainRouter
        interactor = ___VARIABLE_moduleName___Interactor()
        presenter = ___VARIABLE_moduleName___Presenter(view: view, router: self, interactor: interactor)
        view.eventHandler = presenter
    }
}

// MARK: - Wireframe

extension ___VARIABLE_moduleName___Router: Wireframe {

    func viewController() -> UIViewController {
        return view
    }
}

// MARK: - ___VARIABLE_moduleName___Router

extension ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___Wireframe {

}
