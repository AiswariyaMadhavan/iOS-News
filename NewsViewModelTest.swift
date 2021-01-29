//
//  NewsViewModelTest.swift
//  NewsTests
//
//  Created by Iswariya Madhavan on 29/01/21.
//

import XCTest

class NewsViewModelTest: XCTestCase {
    var sut: NewsViewModel?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    override func setUp() {
        super.setUp()
        sut = NewsViewModel()
    }
    
    
    func test_article() {

        // Given A apiservice
        let sut = self.sut!

        // When fetch popular photo
        XCTAssertNotNil(sut.getNoOfArticles())
    }
}
