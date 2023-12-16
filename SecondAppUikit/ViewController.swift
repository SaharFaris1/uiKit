
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firsttext: UILabel!
    @IBOutlet weak var firstImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        firsttext.text = "Elevate Your Learning Experience Today"
        firstImg.image = UIImage(named: "img1")
        
//        let btnLogout = UIBarButtonItem()
//        btnLogout.image = UIImage(systemName:  "power")
//        btnLogout.action = #selector(logout)
//        btnLogout.target = self
//      
//        navigationItem.rightBarButtonItem = btnLogout
    }

    @IBAction func btnSecondUI(_ sender: Any) {
    let vsSecondUI = self.storyboard?.instantiateViewController(identifier: "secondUiID")
        navigationController?.pushViewController(vsSecondUI!, animated: true)
        
    }
//    @objc func logout(){
//    print ("logout user code")
//    }
//    
}



