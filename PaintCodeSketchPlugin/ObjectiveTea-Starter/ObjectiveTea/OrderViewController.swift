/*
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

class OrderViewController: UIViewController {
  
  @IBOutlet weak var flavorName: UILabel!
  
  @IBOutlet weak var bubbleTeaCup: BubbleTeaCup!
  
  @IBOutlet weak var cupHeight: NSLayoutConstraint!
  
  @IBAction func sizeChange(sender: UISegmentedControl) {
    // Change beverage size
  }
  
  @IBAction func toggleBubbles(sender: UISwitch) {
    // Add or remove bubbles
  }
  
  let flavors: [Flavor] = {
    let milkTea = UIColor.grayColor()
    let greenTeaLeaf = UIColor.grayColor()
    let coffee = UIColor.grayColor()
    let taro = UIColor.grayColor()
    let matcha = UIColor.grayColor()
    let mango = UIColor.grayColor()
    let strawberry = UIColor.grayColor()
    let plum = UIColor.grayColor()
    let yogurt = UIColor.grayColor()

    let milkTeaFlavor = Flavor(name: "Milk Tea", color: milkTea)
    let coffeeFlavor = Flavor(name: "Coffee", color: coffee)
    let taroFlavor = Flavor(name: "Taro", color: taro)
    let matchaGreenTeaFlavor = Flavor(name: "Matcha", color: matcha)
    let mangoFlavor = Flavor(name: "Mango", color: mango)
    let strawberryFlavor = Flavor(name: "Strawberry", color: strawberry)
    let plumFlavor = Flavor(name: "Plum", color: plum)
    let yogurtFlavor = Flavor(name: "Yogurt", color: yogurt)
    
    return [
      milkTeaFlavor,
      coffeeFlavor,
      taroFlavor,
      matchaGreenTeaFlavor,
      mangoFlavor,
      strawberryFlavor,
      plumFlavor,
      yogurtFlavor
    ]
  }()
  
}

extension OrderViewController: UICollectionViewDataSource {
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return flavors.count 
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! FlavorCell
    cell.flavor = flavors[indexPath.row]
    return cell
  }
}

extension OrderViewController: UICollectionViewDelegate {
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    let selectedFlavor = flavors[indexPath.row]
    flavorName.textColor = selectedFlavor.color
    flavorName.text = selectedFlavor.name
  }
}