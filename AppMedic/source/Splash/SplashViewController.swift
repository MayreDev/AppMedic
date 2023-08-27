import UIKit

class SplashViewController: UIViewController {
    
    private let splashImage = UIImageView()
    private var timerSplash = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Constants.Colors.backgroundView
        configureImage()
        configureTimerSplash()
    }
    
    private func configureImage() {
        splashImage.image = SplashViewConstants.image.splash
        splashImage.contentMode = .scaleAspectFill
        splashImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(splashImage)
        NSLayoutConstraint.activate([
            splashImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            splashImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            splashImage.heightAnchor.constraint(equalToConstant: SplashViewConstants.image.height)
        ])
    }
    
    private func configureTimerSplash(){
        timerSplash = Timer.scheduledTimer(withTimeInterval: SplashViewConstants.image.timer, repeats: false) { _ in
            let viewController  = PagesViewController(viewDataSource: PagesViewDataSource(), viewDelegate: PagesViewDelegate())
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
