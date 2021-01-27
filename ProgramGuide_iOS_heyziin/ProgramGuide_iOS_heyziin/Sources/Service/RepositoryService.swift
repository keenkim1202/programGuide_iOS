//
//  RepositoryService.swift
//  buzzni_iOS_hyejinKim
//
//  Created by Heyziin on 2021/01/18.
//

import Foundation

protocol RepositoryServiceType {
  func add(item: ItemType)
  func remove(item: ItemType)
  func fetch() -> [ItemType]
  func cleaUp()
}

final class RepositoryService: RepositoryServiceType {
  func add(item: ItemType) {
    
  }
  
  func remove(item: ItemType) {
    
  }
  
  func fetch() -> [ItemType] {
    return []
  }
  
  func cleaUp() {
    
  }
  


}
