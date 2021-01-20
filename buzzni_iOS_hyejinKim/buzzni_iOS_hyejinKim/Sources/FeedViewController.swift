//
//  FeedViewController.swift
//  buzzni_iOS_hyejinKim
//
//  Created by Heyziin on 2021/01/15.
//

import UIKit

class FeedViewController: UIViewController {
  
  let items: [ItemType] = []
  let day: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var collectionView: UICollectionView!

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.delegate = self
    collectionView.dataSource = self
  }
  
}



extension FeedViewController: UITableViewDelegate {
}

extension FeedViewController: UITableViewDataSource {
  func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! FeedTableViewCell
    return cell
  }
}

// collectionView
extension FeedViewController: UICollectionViewDelegate {
}

extension FeedViewController: UICollectionViewDataSource {
  func collectionView(
    _ collectionView: UICollectionView,
    numberOfItemsInSection section: Int) -> Int {
    return day.count
  }
  
  func collectionView(
    _ collectionView: UICollectionView,
    cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! FeedCollectionViewCell
    cell.backgroundColor = .orange
    cell.dayLabel?.text = "\(day[indexPath.row])"
    return cell
  }
}
