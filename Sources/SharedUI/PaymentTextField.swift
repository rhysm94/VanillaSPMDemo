import StripePaymentsUI
import UIKit
import SwiftUI

public final class PaymentTextField: STPPaymentCardTextField {
  public init() {
    super.init(frame: .zero)
    self.delegate = self
  }

  @available(*, unavailable)
  @MainActor required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension PaymentTextField: STPPaymentCardTextFieldDelegate {}

public struct PaymentTextFieldRepresentable: UIViewRepresentable {
  public init() {}

  public func makeUIView(context: Context) -> PaymentTextField {
    let view = PaymentTextField()
    view.frame = .init(x: 0, y: 0, width: 200, height: 100)
    return view
  }

  public func updateUIView(_ uiView: PaymentTextField, context: Context) {}
}
