//
//  API.swift
//  buzzni_iOS_hyejinKim
//
//  Created by Heyziin on 2021/01/19.
//

import Moya

enum ItemAPI {
  case timeline(platform: String, timeSize: Int, direction: String)
}

extension ItemAPI: TargetType {
  var headers: [String : String]? { return nil }

  var baseURL: URL { return URL(string: "http://item.assignment.dev-k8s.buzzni.net/timeline") }

  var path: String {
    return ""
  }

  var method: Method { return .get }
  
  var task: Task {
    switch self {
    case .timeline(let platform, let timeSize, let direction):
      return .requestParameters(
        parameters: [
          "platform": platform,
          "time_size": timeSize,
          "direction": direction],
        encoding: URLEncoding.default)
    }
  }

  var sampleData: Data { return Data() }
}
