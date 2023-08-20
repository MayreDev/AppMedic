import UIKit

class TabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Constants.Colors.backgroundView
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
}
