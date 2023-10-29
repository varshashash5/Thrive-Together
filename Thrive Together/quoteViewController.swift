//
//  quoteViewController.swift
//  Thrive Together
//
//  Created by VARSHA SHASHISHEKAR on 10/14/23.
//

import UIKit

class quoteViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    
    let arrayOfQuotes = ["It's going to be okay.", "Small steps everyday.", "Slow progress is progress.", "Imagine where you'd be be next year if you started now.", "Create the life you can't wait to wake up to.", "Your direction is more important than your speed.","Good things take time.", "Everything is hard before it is easy.", "Do it for yourself.", "You'll make it.", "You only fail when you stop trying.", "Your potential is endless."]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func quoteButton(_ sender: Any) {
        let randomNumber = Int.random(in: 0...(arrayOfQuotes.count-1))
        quoteLabel.text = arrayOfQuotes[randomNumber]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
