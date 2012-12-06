//
//  PlanViewController.m
//  test
//
//  Created by Loïc on 04/12/12.
//  Copyright (c) 2012 Loïc. All rights reserved.
//
// C'est là où il y aura le plan map où on code le contenu
#import "PlanViewController.h"
#import <MapKit/MapKit.h>

@interface PlanViewController ()
@end

//Paris coordonnées
#define PARIS_LATITUDE 48.864715;
#define PARIS_LONGITUDE 2.197266;

//span
#define THE_SPAN 0.3f;


@implementation PlanViewController
@synthesize myMapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Plan";
    }
    return self;
}


- (void)viewDidLoad
{
    // Création de la MapView
    
    MKMapView *mapView = [[MKMapView alloc ] initWithFrame:self.view.frame];
    mapView.mapType = MKMapTypeStandard;
    mapView.showsUserLocation = YES;
    
    
    //Create the region
    
    MKCoordinateRegion myRegion;
    
    //Center
    
    CLLocationCoordinate2D center;
    center.latitude = PARIS_LATITUDE;
    center.longitude = PARIS_LONGITUDE;
    
    //Span
    
    MKCoordinateSpan span;
    span.latitudeDelta = THE_SPAN;
    span.longitudeDelta = THE_SPAN;
    
    myRegion.center = center;
    myRegion.span = span;
    
    //Set our Map View
    
    [myMapView setRegion:myRegion animated: YES];
    
    
    //Ajouter la mapView comme subview de notre view
    
    [self.view addSubview:mapView];
    
    
    
}



@end
