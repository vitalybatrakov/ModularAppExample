import SnapKit
import SwiftUI

extension UIViewController {
    @discardableResult
    func hostSwiftUIView<T: View>(
        view: T,
        insideView hostView: UIView? = nil
    ) -> UIHostingController<T> {
        let hostingController = UIHostingController(rootView: view)
        if #available(iOS 16.0, *) {
            hostingController.sizingOptions = [.intrinsicContentSize]
        }
        addChild(hostingController)
        hostingController.didMove(toParent: self)
        if let hostView {
            hostView.addSubview(hostingController.view)
        } else {
            self.view.addSubview(hostingController.view)
        }
        hostingController.view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        return hostingController
    }
}
