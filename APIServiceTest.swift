//
//  NewsTests.swift
//  NewsTests
//
//  Created by Iswariya Madhavan on 29/01/21.
//

import XCTest

class APIServiceTest: XCTestCase {
    var sut: MockAPIService?
    override func setUp() {
        super.setUp()
        sut = MockAPIService()
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_fetch_top_news_status() {

        // Given A apiservice
        let sut = self.sut!

        // When fetch popular photo
        let expect = XCTestExpectation(description: "callback")
        sut.getTopNews(query: "", completion: {
            (data, error) in
            expect.fulfill()
            if let status = data?.status {
                XCTAssertEqual(status, "ok")
                if let articleArray = data?.articles {
                    for id in articleArray {
                        XCTAssertNotNil(id.author)
                    }
                }
            }
            else {
                XCTAssertFalse(false)
            }
        })
    }

    func test_fetch_top_news_article() {

        // Given A apiservice
        let sut = self.sut!

        // When fetch popular photo
        let expect = XCTestExpectation(description: "callback")
        sut.getTopNews(query: "", completion: {
            (data, error) in
            expect.fulfill()
            if let articleArray = data?.articles {
                for id in articleArray {
                    XCTAssertNotNil(id.author)
                }
            }
            else {
                XCTAssertFalse(false)
            }
        })
    }
}
