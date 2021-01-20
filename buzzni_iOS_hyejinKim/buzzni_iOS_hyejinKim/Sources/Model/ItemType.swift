//
//  ItemType.swift
//  buzzni_iOS_hyejinKim
//
//  Created by Heyziin on 2021/01/15.
//

import Foundation

class ItemType {
  var id: String
  var url: String
  var shop: String
  var name: String
  var startDateTime: Date
  var endDateTime: Date
  var originalPrce: String
  var price: String
  var isEnable: Bool

  
  init() {
    id = ""
    shop = ""
    name = ""
    url = ""
    startDateTime = Date()
    endDateTime = Date()
    originalPrce = ""
    price = ""
    isEnable = false
  }
}
