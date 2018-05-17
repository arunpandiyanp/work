//
//  ViewController.swift
//  MapView
//
//  Created by Rk on 16/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController,GMSMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 9.288824, longitude: 76.472026, zoom: 70.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        mapView.animate(toZoom: 60)
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 9.288824, longitude: 76.472026)
        marker.title = "Haripad"
        marker.snippet = "town"
        marker.map = mapView
        mapView.mapType = .satellite
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        mapView.settings.scrollGestures = true

        // Do any additional setup after loading the view.
    }
    func didTapMyLocationButton(for mapView: GMSMapView) -> Bool {
        let camera = GMSCameraPosition.camera(withLatitude: 9.288824, longitude: 76.472026, zoom: 70.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        mapView.animate(toZoom: 60)
        return true
    }
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        let cameraTwo = GMSCameraUpdate()
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func mapView(_ mapView: GMSMapView, didBeginDragging marker: GMSMarker) {
        print("didBeginDragging")
    }
    func mapView(_ mapView: GMSMapView, didDrag marker: GMSMarker) {
        print("items are dragging")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
