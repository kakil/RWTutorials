/*
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import MapKit

class StoresViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  
  func createLocation(latitude latitude: CLLocationDegrees, longitude: CLLocationDegrees) -> MKPointAnnotation {
    let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    let annotation = MKPointAnnotation()
    annotation.coordinate = coordinate
    return annotation
  }
  
  func getBranchLocations() -> [MKPointAnnotation] {
    var branchLocations: [MKPointAnnotation] = []
    branchLocations.append(createLocation(latitude: 37.6993597, longitude: -121.875374))
    branchLocations.append(createLocation(latitude: 28.054989, longitude: -82.4488764))
    branchLocations.append(createLocation(latitude: 33.8970139, longitude: -84.28477))
    branchLocations.append(createLocation(latitude: 41.8543039, longitude: -87.6351054))
    branchLocations.append(createLocation(latitude: 42.3425943, longitude: -71.0863614))
    branchLocations.append(createLocation(latitude: 39.0882411, longitude: -77.1554944))
    branchLocations.append(createLocation(latitude: 40.7171453, longitude: -73.9967759))
    branchLocations.append(createLocation(latitude: 29.7033972, longitude: -95.5556642))
    return branchLocations
  }
  
  func zoomToTheContinentalUS(){
    let span = MKCoordinateSpanMake(70, 70)
    let center = CLLocationCoordinate2D(
      latitude: 39.8306856,
      longitude: -97.7062666
    )
    let region = MKCoordinateRegion(center: center, span: span)
    mapView.setRegion(region, animated: true)
  }
  
  override func viewDidLoad() {
    let branchLocations = getBranchLocations()
    mapView.addAnnotations(branchLocations)
    zoomToTheContinentalUS()
  }
  
}

extension StoresViewController: MKMapViewDelegate {
  func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
    switch annotation {
    case is MKUserLocation:
      return nil // blue pulsy dot
    default:
      let reuseId = "MapMarker"
      var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId)
      if let pinView = pinView {
        pinView.annotation = annotation
      } else {
        pinView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
        pinView?.image = UIImage(named: reuseId)
      }
      return pinView
    }
  }
}