import Alamofire
import SwiftyJSON

class RedditService {
  static let instance = RedditService()
  private init() {
    
  }
  func fetchEntries(callback: [Entry]->Void) {
    request(.GET, "https://reddit.com/hot.json").responseJSON { response in
      if let data = response.result.value,
        json = JSON(data)["data"]["children"].array {
          let entries = json.map { e -> Entry in
            let title = e["data"]["title"].stringValue
            let numComments = e["data"]["num_comments"].intValue
            let score = e["data"]["score"].intValue
            let url = e["data"]["url"].stringValue
            let  domain = e["data"]["domain"].stringValue
            let entryObj = Entry(title: title, numComments: numComments, score: score, url: url, domain: domain)
            return entryObj
          }
          callback(entries)
      }
    }
  }
}