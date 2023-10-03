//
//  ScreenIdentifier.swift
//  tip-calculator
//
//  Created by Juan Carlos Hernandez Castillo on 2/10/23.
//

import Foundation

enum ScreenIdentifier {
  
  enum LogoView: String {
    case logoView
  }
  
  enum ResultView: String {
    case totalAmountPerPersonValueLabel
    case totalBillValueLabel
    case totalTipValueLabel
  }
  
  enum BillInputView: String {
    case textField
  }
  
  enum TipInputView: String {
    case tenPercentButton
    case fifteenPercentButton
    case twentyPercentButton
    case customTipButton
    case customTipAlertTextField
  }
  
  enum SplitInputView: String {
    case decrementButton
    case incrementButton
    case quantityValueLabel
  }
  
}
