//
// Created on 2023/1/4.
//

import Foundation
import XCTest
@testable import QuizEngine

final class FlowTest: XCTestCase {
    func testStartWithNoQuestions() {
        let router = RouterSpy()
        let sut = Flow(router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 0)
    }
    
    class RouterSpy: Router {
        var routedQuestionCount: Int = 0
    }
}
