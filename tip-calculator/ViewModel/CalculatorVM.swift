//
//  CalculatorVM.swift
//  tip-calculator
//
//  Created by Juan Carlos Hernandez Castillo on 18/09/23.
//

import Foundation
import Combine

class CalculatorVM {
    
    struct Input {
        
        /// Never: no failure
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    func transform(input: Input) -> Output {
        let result = Result(
            amountPerPerson: 500,
            totalBill: 1000,
            totalTip: 1500)
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
    
}
