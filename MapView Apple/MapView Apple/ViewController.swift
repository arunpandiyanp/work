//
//  ViewController.swift
//  MapView Apple
//
//  Created by Rk on 19/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,UIGestureRecognizerDelegate,MKMapViewDelegate {
    let annotation = MKPointAnnotation()
    
    var coord:CLLocationCoordinate2D?
    
    let annot = MKPointAnnotation()

    @IBOutlet weak var ma: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coord = CLLocationCoordinate2D(latitude: 9.2799, longitude: 76.4592)
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let reg = MKCoordinateRegion(center: coord!, span: span)
        ma.isZoomEnabled = true
        ma.setRegion(reg, animated: true)
//      ma.mapType = .satelliteFlyover
        ma.mapType = .hybrid
        ma.isUserInteractionEnabled = true
        ma.showsUserLocation = true
        annot.title = "Haripad"
        annot.coordinate = coord!
//        ma.addAnnotation(annot)
        ma.showsUserLocation = true
        
        
        //on Tap
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(gestureReconizer:)))
        gestureRecognizer.delegate = self
        ma.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func handleTap(gestureReconizer: UILongPressGestureRecognizer) {
        ma.removeAnnotation(annot)
        let location = gestureReconizer.location(in: ma)
        let coordinate = ma.convert(location,toCoordinateFrom: ma)
        
        // Add annotation:
        
        annot.coordinate = coordinate
        ma.addAnnotation(annot)
        let title = UITapGestureRecognizer(target: self, action: #selector(onTapHandler))
        title.delegate = self
        ma.addGestureRecognizer(title)
    }
    
    @objc func onTapHandler(tgr:UITapGestureRecognizer){
        let touchPoint = tgr.location(in: ma)
        let touchMapCoordinate = ma.convert(touchPoint, toCoordinateFrom: ma)
        let location = CLLocation(latitude: touchMapCoordinate.latitude, longitude: touchMapCoordinate.longitude)
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) -> Void in
            // Place details
            var placeMark: CLPlacemark!
            placeMark = placemarks?[0]
            
            // Address dictionary
//            print(placeMark.addressDictionary!)
            
            // Location name
          

            if let locationName = placeMark.addressDictionary!["City"] as? NSString {
               
                self.annot.title = locationName as String
                self.annot.coordinate = self.coord!
                self.ma.addAnnotation(self.annot)
                print("function two")
            }
        })




    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

