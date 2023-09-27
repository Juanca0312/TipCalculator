//
//  tip_calculatorSnapshotTest.swift
//  tip-calculatorTests
//
//  Created by Juan Carlos Hernandez Castillo on 26/09/23.
//

import XCTest
import SnapshotTesting

@testable import tip_calculator

final class tip_calculatorSnapshotTests: XCTestCase {
    
    private var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    func testLogoView() {
        //given
        let size = CGSize(width: screenWidth, height: 48)
        
        //when
        let view = LogoView()
        
        //then
        assertSnapshot(of: view, as: .image(size: size))
        //record to update the view
    }
    
    func testInitialResultView() {
        //given
        let size = CGSize(width: screenWidth, height: 224)
        
        //when
        let view = ResultView()
        
        //then
        assertSnapshot(of: view, as: .image(size: size))
        //record to update the view
    }
    
    func testResultViewWithValues() {
        //given
        let size = CGSize(width: screenWidth, height: 224)
        let result = Result(amountPerPerson: 100, totalBill: 45, totalTip: 60)
        
        //when
        let view = ResultView()
        view.configure(result: result)
        
        //then
        assertSnapshot(of: view, as: .image(size: size))
        //record to update the view
    }
    
    func testInitialTipInputView() {
        //given
        let size = CGSize(width: screenWidth, height: 56+56+16)
        
        //when
        let view = TipInputView()
        
        //then
        assertSnapshot(of: view, as: .image(size: size))
        //record to update the view
    }
    
    func testInitialBillInputView() {
        //given
        let size = CGSize(width: screenWidth, height: 56)
        
        //when
        let view = BillInputView()
        
        //then
        assertSnapshot(of: view, as: .image(size: size))
        //record to update the view
    }
    
    func testInitialSplitInputView() {
        //given
        let size = CGSize(width: screenWidth, height: 56)
        
        //when
        let view = SplitInputView()
        
        //then
        assertSnapshot(of: view, as: .image(size: size))
        //record to update the view
    }
}
