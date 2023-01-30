//
//  ContentView.swift
//  StoreHelperTests
//
//  Created by Russell Archer on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
 
 //
//  StoreHelperTests.swift
//
//
//  Created by Russell Archer on 27/01/2023.
//

/*
 
 Make sure that Package.swift contains a test target as follows: .testTarget(name: "StoreHelperTests", dependencies: ["StoreHelper"])
 Tests may be run from Xcode by clicking the diamond indicators in the test class, or from the command line as follows:
    - Open Terminal and navigate to the top-level folder that holds your project.
    - List the available schemes in your project with: xcodebuild -list
    - List available SDKs and simulators with: xcodebuild -showsdks
    - Build and run your tests: xcodebuild test -scheme StoreHelper -sdk iphonesimulator16.2 -destination "OS=16.2,name=iPhone 14 Pro Max"
 
 
 Example code:
 https://gist.github.com/ricardopereira/7f8c352b5322b0f67053830367029110
 
 */

import XCTest
import StoreKitTest
@testable import StoreHelper

final class StoreHelperTests: XCTestCase {
    var sut = StoreHelper()  // System under test
    var session: SKTestSession!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        guard let storekitProductsUrl = Bundle.module.url(forResource: "Products", withExtension: "storekit") else {
            XCTAssert(false)
            return
        }
        
        session = try SKTestSession(contentsOf: storekitProductsUrl)
//        session.resetToDefaultState()
//        session.disableDialogs = true
//        session.clearTransactions()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        session = nil
    }

    @MainActor func testExample() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        await sut.asyncStart()

        XCTAssert(sut.hasStarted)
        XCTAssert(sut.hasProducts)
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
}

 
 
 */
