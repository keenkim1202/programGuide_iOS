//
//  FeedTableViewCell.swift
//  buzzni_iOS_hyejinKim
//
//  Created by Heyziin on 2021/01/15.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
  @IBOutlet weak var dateLabel: NSLayoutConstraint!
  
  @IBOutlet weak var itemImage: UIImageView!
  @IBOutlet weak var shopNameLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
  @IBOutlet weak var itemNameLabel: UILabel!
  @IBOutlet weak var originalPriceLabel: UILabel!
  @IBOutlet weak var priceLabel: UILabel!
  
}
