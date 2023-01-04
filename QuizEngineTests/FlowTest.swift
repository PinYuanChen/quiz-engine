//
// Created on 2023/1/4.
//

import Foundation
import XCTest
@testable import QuizEngine

final class FlowTest: XCTestCase {
    
    func testStartWithNoQuestionsDoesNotRouteToQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: [], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 0)
    }
    
    func testStartWithOneQuestionsRoutesToQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q1"], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 1)
    }
    
    func testStartWithOneQuestionsRoutesToCorrectQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q1"], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestion, "Q1")
    }
    
    class RouterSpy: Router {
        var routedQuestionCount: Int = 0
        var routedQuestion: String? = nil
        
        func routeTo(question: String) {
            routedQuestionCount += 1
            routedQuestion = question
        }
    }
}
