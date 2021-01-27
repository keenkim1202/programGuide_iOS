//
//  ProgramGuide+DateFormatter.swift
//  buzzni_iOS_hyejinKim
//
//  Created by KEEN on 2021/01/27.
//

import Foundation

extension DateFormatter {
  static var startDateTime: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyyMMdd"
    return formatter
  }
  
  static var endDateTime: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyyMMdd"
    return formatter
  }
}

extension String {
  var date: Date? {
    return DateFormatter.startDateTime.date(from: self)
  }
}

extension Date {
  var startDateTime: String {
    return DateFormatter.startDateTime.string(from: self)
  }
  
  var endDateTime: String {
    return DateFormatter.endDateTime.string(from: self)
  }
}
