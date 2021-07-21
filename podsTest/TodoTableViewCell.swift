//
//  todoTableViewCell.swift
//  podsTest
//
//  Created by Administrador on 7/20/21.
//

import UIKit

protocol TodoTableViewCellDelegate: AnyObject {
    func didTapButton(cell: TodoTableViewCell)
    func didTapBackground()
}

extension TodoTableViewCellDelegate {
    func didTapBackground() { }
}

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoCompleted: UILabel!
    @IBOutlet weak var todoLabel: UILabel!
    // @IBOutlet weak var numberLabel: UILabel!
        static let identifier = "TodoTableViewCell"
        
        weak var delegate: TodoTableViewCellDelegate?
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }
        // added
        override func prepareForReuse() {
            super.prepareForReuse()
            // configure cell with default state
        }
        
    func configure(info: String, completed: Bool) {
            todoLabel.text = info
            if (completed){
                todoCompleted.text = "+"
            }
            else{
                todoCompleted.text = "-"
            }
        }
        //
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
       // @IBAction func buttonPress(_ sender: Any) {
       //     delegate?.didTapButton(cell: self)
       // }
    
}
