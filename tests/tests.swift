import XCTest

@testable import lab

class tests: XCTestCase {

    func testMin() throws {
        XCTAssertEqual(mymin(1,2), 1);
        XCTAssertEqual(mymin(1,1), 1);
        XCTAssertEqual(mymin(3,6), 3);
        XCTAssertEqual(mymin(-123,2), -123);
    }
    
    func testMax() throws {
        XCTAssertEqual(mymax(1,2), 2);
        XCTAssertEqual(mymax(1,1), 1);
        XCTAssertEqual(mymax(3,6), 6);
        XCTAssertEqual(mymax(-123,2), 2);
    }
}
