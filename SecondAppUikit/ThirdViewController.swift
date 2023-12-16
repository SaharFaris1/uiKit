import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPro.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! CustomTableViewCell
        let data = arrPro[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, description: data.description)
        return cell
    }
    
    var arrPro = [ProgLang]()
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var desLang: UILabel!
    @IBOutlet weak var langName: UILabel!
    @IBOutlet weak var tableview2: UITableView!
    @IBOutlet weak var txtlab1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview2.delegate = self
        tableview2.dataSource = self
        tableview2.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell2")

        arrPro.append(ProgLang(name: "Introduction to UI/UX design history.", description: "149sr", photo: UIImage(named: "ui")!))
        arrPro.append(ProgLang(name: "Fundamentals of Java Programming.", description: "300 sr", photo: UIImage(named: "java")!))
        arrPro.append(ProgLang(name: "Advanced Certification Program in Al/ML.", description: "250sr ", photo: UIImage(named: "ml")!))
        arrPro.append(ProgLang(name: "PG Program in Big Data Engineering", description: "200sr", photo: UIImage(named: "data")!))
        arrPro.append(ProgLang(name: "Google Cloud Platform Architecture", description: "120 sr", photo: UIImage(named: "google")!))
        // Do any additional setup after loading the view.
    }
    
    func setupCell(photo: UIImage, name: String, description: String) {
        img.image = photo
        langName.text = name
        desLang.text = description
    }
}

class CustomTableViewCell: UITableViewCell {
    func setupCell(photo: UIImage, name: String, description: String) {
        // Implement your cell setup logic here
    }
}

struct ProgLang {
    let name: String
    let description: String
    let photo: UIImage
}


