import UIKit

class EntryCell: UITableViewCell {
  
  @IBOutlet weak var lblTitle: UILabel!
  @IBOutlet weak var lblScore: UILabel!
  @IBOutlet weak var lblDomain: UILabel!
  @IBOutlet weak var lblComments: UILabel!
  
  var entry: Entry?
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func showEntry(entry: Entry) {
    self.entry = entry
    lblTitle.text = entry.title
    lblScore.text = String(entry.score)
    lblComments.text = String(entry.numComments)
    lblDomain.text = entry.domain
  }
  
}
