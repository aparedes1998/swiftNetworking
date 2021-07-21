//
//  ViewController.swift
//  podsTest
//
//  Created by Administrador on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myTableView: UITableView!
    let arr = APIClient.shared.requestItems(request: <#T##APIRoute#>, onCompletion: <#T##(Result<[BaseMappable], Error>) -> Void#>)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.dataSource = self
                myTableView.delegate = self
                
                myTableView.register(UINib(nibName: TodoTableViewCell.identifier, bundle: nil),forCellReuseIdentifier: TodoTableViewCell.identifier)
        
    }
}
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arr.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: TodoTableViewCell.identifier,for: indexPath) as! TodoTableViewCell
            cell.delegate = self
            cell.configure( info:  String(arr[indexPath.row]))
            return cell
        }
        
    }

    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
    }

    extension ViewController: TodoTableViewCellDelegate {
        func didTapButton(cell: TodoTableViewCell) {
            guard let indexPath = myTableView.indexPath(for: cell) else {
                return
            }
            let tappedNumber = arr[indexPath.row]
            print("cell with number \(tappedNumber) tapped")
        }
    }



