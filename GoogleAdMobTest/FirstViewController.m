//
//  FirstViewController.m
//  GoogleAdMobTest
//
//  Created by RoLY roLLs on 9/13/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "FirstViewController.h"
#import "GADBannerView.h"
#import "GADRequest.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.bannerView.adUnitID = @"ca-app-pub-7038667452523799/9060866068";
	self.bannerView.rootViewController = self;
	
	GADRequest *request = [GADRequest request];
	// Enable test ads on simulators.
	request.testDevices = @[ GAD_SIMULATOR_ID ];
	[self.bannerView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
