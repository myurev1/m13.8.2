import UIKit
class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    func setTabBar() {
        viewControllers = [
            setVC(
                viewController: ProfileViewController(),
                title: "Profile",
                image: UIImage(systemName: "person.fill")
            ),
            setNC(
                viewController: PhotoViewController(),
                title: "Photo",
                image: UIImage(systemName: "photo.fill.on.rectangle.fill")
            ),
            setNC(
                viewController: SettingsViewController(),
                title: "Settings",
                image: UIImage(systemName: "gearshape"))
                ]
    }
    
    private func setVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setNC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
    

}
