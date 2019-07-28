//___FILEHEADER___

import Foundation

class ___VARIABLE_moduleName___Presenter {

    private weak var view: ___VARIABLE_moduleName___View?
    private weak var router: ___VARIABLE_moduleName___Router?
    private weak var interactor: ___VARIABLE_moduleName___Interactor?

    init(view: ___VARIABLE_moduleName___View, router: ___VARIABLE_moduleName___Router, interactor: ___VARIABLE_moduleName___Interactor?) {
        self.view = view
        self.router = router
        self.interactor = interactor
        interactor?.presenter = self
    }
}

// MARK: - ___VARIABLE_moduleName___EventHandler

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___EventHandler {

    func viewDidLoad() {
        // TODO: Do something in viewDidLoad()
        print("TODO: Do something in \(#function)")
    }
}

// MARK: - ___VARIABLE_moduleName___InteractorDelegate

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___InteractorDelegate {

}
