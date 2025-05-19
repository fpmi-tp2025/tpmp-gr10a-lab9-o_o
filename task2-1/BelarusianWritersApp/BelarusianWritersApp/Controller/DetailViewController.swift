//
//  DetailViewController.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 19/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    private var writer: Writer
    
    init(writer: Writer) {
        self.writer = writer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        let nameLabel = UILabel(frame: CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 30))
        nameLabel.text = writer.name
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(nameLabel)
        
        let bioLabel = UILabel(frame: CGRect(x: 20, y: 140, width: view.frame.width - 40, height: 100))
        bioLabel.numberOfLines = 0
        bioLabel.text = writer.bio
        view.addSubview(bioLabel)
        
        let booksLabel = UILabel(frame: CGRect(x: 20, y: 250, width: view.frame.width - 40, height: 100))
        booksLabel.numberOfLines = 0
        booksLabel.text = "Книги:\n" + writer.books.joined(separator: "\n")
        view.addSubview(booksLabel)
    }
}
