//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, MovieDataControllerDelegate {
    
    

    @IBOutlet weak var movieTableView: UITableView!
    
    let movieDataController = MovieDataController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate     = self
        movieTableView.dataSource   = self

        // Do any additional setup after loading the view.
    }
    

}

extension MovieListViewController: UITableViewDelegate {
    
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieDataController.moviesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let movie = movieDataController.moviesList[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    
    func updateMovieList(for cell: MovieTableViewCell) {
        
    }
    
}
