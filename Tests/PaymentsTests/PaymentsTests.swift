import Payments
import SnapshotTesting
import XCTest

final class MyViewSnapshotTests: XCTestCase {
  @MainActor
  func testMyViewSnapshot() {
    assertSnapshot(of: MyView(), as: .image)
  }
}
