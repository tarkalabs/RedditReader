import UIKit
import SnapKit

class EntryProgCell: UITableViewCell {

  var entry:Entry?
  var lblTitle: UILabel!
  var lblScore: UILabel!
  var lblDomain: UILabel!
  var lblComments: UILabel!
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupViews()
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
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
  
  private func setupViews() {
    lblTitle = UILabel()
    lblScore = UILabel()
    lblDomain = UILabel()
    lblComments = UILabel()
    
    self.addSubview(lblTitle)
    lblTitle.numberOfLines = 0
    lblTitle.setContentHuggingPriority(252, forAxis: .Horizontal)
    lblScore.setContentCompressionResistancePriority(1000, forAxis: .Horizontal)
    lblScore.textAlignment = .Right
    
    lblTitle.snp_makeConstraints { make in
      make.left.equalTo(self.snp_left).offset(8)
      make.top.equalTo(self.snp_top).offset(8)
    }
    
    self.addSubview(lblScore)
    
    lblScore.snp_makeConstraints { make in
      make.right.equalTo(self.snp_right).offset(-8)
      make.top.equalTo(self.snp_top).offset(8)
      make.left.equalTo(lblTitle.snp_right).offset(8)
    }
    
    addSubview(lblComments)
    lblComments.snp_makeConstraints { make in
      make.left.equalTo(self.snp_left).offset(8)
      make.top.equalTo(lblTitle.snp_bottom).offset(8)
      make.bottom.equalTo(snp_bottom).offset(-8)
    }
    
    addSubview(lblDomain)
    lblDomain.snp_makeConstraints { make in
      make.left.equalTo(lblComments.snp_right).offset(8)
      make.top.equalTo(lblComments.snp_top)
    }
    
  }
  
}