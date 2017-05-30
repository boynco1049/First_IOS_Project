

import UIKit

class FeedViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var newsArray: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        self.setupTableViewDummyData()
        
       
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func setupTableView(){
        self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
        
    }
    
    func setupTableViewDummyData(){
        let news:News = News(title: "IOS", description: "Error late stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Jobs", view: 2, createdate: "29/06/60", groups: "SCI")
        let news2:News = News(title: "Android", description: "5555+", iconImage: #imageLiteral(resourceName: "cat"), author: "Jack", view: 99999, createdate: "29/06/60",groups: "SCI")
        let news3:News = News(title: "Zebra", description: "Can swim *0*", iconImage: #imageLiteral(resourceName: "dog"), author: "Col.Zoo", view: 1049, createdate: "29/06/60",groups: "Animal")
        let news4:News = News(title: "Vegetable", description: "CHEAP", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Aunti", view: 5555, createdate: "29/06/60",groups: "Veggy")
        let news5:News = News(title: "Football", description: "Manchester United beat Ajax 2-0", iconImage: #imageLiteral(resourceName: "dog"), author: "Boo", view: 999999, createdate: "29/06/60",groups: "Sport")
        let news6:News = News(title: "Technology", description: "found new tree", iconImage: #imageLiteral(resourceName: "cat"), author: "Grakk", view: 45231, createdate: "29/06/60",groups: "SCI")
        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news3)
        newsArray.append(news4)
        newsArray.append(news5)
        newsArray.append(news6)
    }

}


extension FeedViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        var news:News = newsArray[rowNo]
        cell.setupUI(news: news)
        return cell
        
    }
    
}

