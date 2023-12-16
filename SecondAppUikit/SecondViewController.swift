
import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    @IBOutlet weak var txtlab1: UILabel!
    
    @IBOutlet weak var txtlab2: UILabel!
    @IBOutlet weak var btnFirst: UIButton!
    @IBOutlet weak var btnSecond: UIButton!
    @IBOutlet weak var btnThird: UIButton!
    @IBOutlet weak var secText: UILabel!
    @IBOutlet weak var btnFourth: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(true, animated: true)
        btnFirst.alpha = 0
        btnSecond.alpha = 0
        btnThird.alpha = 0
        btnFourth.alpha = 0
        secText.text = "What would you like to learn today ?"
        txtlab1.text = "Introduction to UI/UX design history."
        txtlab2.text = "149 sr"
      
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        animateItem()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      return cell
    }
    func animateItem() {
        UIView.animate(withDuration: 1){
            self.btnFirst.alpha = 1
            self.btnSecond.alpha = 1
            self.btnThird.alpha = 1
            self.btnFourth.alpha = 1
            
        }
        UIView.animate(withDuration: 1){
            self.btnFirst.center.y += 50
            self.btnSecond.center.y += 50
            self.btnThird.center.y += 50
            self.btnFourth.center.y += 50
            
        }
        
       
    }
}
