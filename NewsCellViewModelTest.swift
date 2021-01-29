//
//  NewsCellViewModel.swift
//  NewsTests
//
//  Created by Iswariya Madhavan on 29/01/21.
//

import XCTest

class NewsCellViewModelTest: XCTestCase {
    var sut: NewsTableCellViewModel?
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
    
    override func setUp() {
        super.setUp()
        sut = NewsTableCellViewModel()
    }

    //Test case to validate that the likes should never be nil, inspite of passing invalid id

    func testLikes() {
        let sut = self.sut!
        sut.getArticleLikes(articleId: "")
        sut.updateLikes = {
            XCTAssertNotNil(sut.likesUpdated)
        }
    }
    
    //Test case to validate that the comments should never be nil, inspite of passing invalid id
    func testComments() {
        let sut = self.sut!
        sut.getArticleLikes(articleId: "")
        sut.updateLikes = {
            XCTAssertNotNil(sut.commentsUpdated)
        }
    }

  
}
