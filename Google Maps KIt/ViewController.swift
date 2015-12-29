//
//  ViewController.swift
//  Google Maps KIt
//
//  Created by Phuc .Ng on 12/29/15.
//  Copyright © 2015 Phuc .Ng. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // khai bao vi tri khi ban do bat day
        let location = CLLocationCoordinate2DMake(21.0333, 105.8500)
        
        let annotation = MKPointAnnotation()
        
        //set location vao trong map
        
        annotation.coordinate = location
        // information location
        annotation.title = "This is location"
        annotation.subtitle = "location me"
        
        
        //set view my point start app
        let span = MKCoordinateSpanMake(0.002, 0.002)
        
        let region = MKCoordinateRegionMake(location, span)
        
        myMap.setRegion(region, animated: true)
        
        
        //add anno to map
        myMap.addAnnotation(annotation)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

