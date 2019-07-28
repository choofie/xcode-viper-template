//___FILEHEADER___

import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController {

    weak var eventHandler: ___VARIABLE_moduleName___EventHandler?

    override func viewDidLoad() {
        super.viewDidLoad()
        eventHandler?.viewDidLoad()
        configureUI()
    }
}

// MARK: - IBActions

private extension ___VARIABLE_moduleName___ViewController {

}

// MARK: - Private Extension

private extension ___VARIABLE_moduleName___ViewController {

    func configureUI() {
        // TODO: Do something in configureUI()
        print("TODO: Do something in \(#function)")
    }
}

// MARK: - ___VARIABLE_moduleName___View

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___View {

}
