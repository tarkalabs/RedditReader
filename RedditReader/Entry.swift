struct Entry {
  let title:String
  let numComments:Int
  let score:Int
  let url:String
  let domain:String
  var isSelf:Bool {
    get {
      return domain.hasPrefix("self")
    }
  }
  init(title: String, numComments: Int, score: Int, url: String, domain: String) {
    self.title = title
    self.numComments = numComments
    self.score = score
    self.url = url
    self.domain = domain
  }
}