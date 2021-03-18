#if canImport(UIKit) && !os(watchOS)
import Bindings
import CombineX
import CXFoundation
import UIKit

extension Reactive where Base: UIApplication {
  public static var didBecomeActiveNotification: Publishers.Map<NotificationCenter.CX.Publisher, Void> {
    NotificationCenter.default.cx.publisher(for: Base.didBecomeActiveNotification).map { _ in }
  }
}
#endif
