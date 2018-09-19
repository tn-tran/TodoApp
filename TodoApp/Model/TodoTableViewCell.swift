//
//  TodoTableViewCell.swift
//  TodoApp
//
//  Created by Tien Tran on 9/18/18.
//  Copyright © 2018 Tien-Enterprise. All rights reserved.
//

import UIKit

//protocol TodoCellDelegate {
//	func didRequestDelete(_ cell: TodoTableViewCell)
//	func didRequestComplete (_ cell: TodoTableViewCell)
//	func didRequestShare(_ cell: TodoTableViewCell)
//}
class TodoTableViewCell: UITableViewCell {

	@IBOutlet weak var todoLabel: UILabel!
//	var delegate: TodoCellDelegate?
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//	@IBAction func completeTodo(_ sender: Any) {
//		if let delegateObject = self.delegate {
//			delegateObject.didRequestComplete(self)
//		}
//	}
//
//
//	@IBAction func deleteTodo(_ sender: Any) {
//		if let delegateObject = self.delegate {
//			delegateObject.didRequestDelete(self)
//		}
//	}
//
//	@IBAction func shareTodo(_ sender: Any) {
//
//		if let delegateObject = self.delegate {
//			delegateObject.didRequestShare(self)
//		}
//	}
	
	override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
		self.contentView.backgroundColor = UIColor.white

        // Configure the view for the selected state
    }

}
