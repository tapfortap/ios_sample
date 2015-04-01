//
//  ViewController.m
//  The Best Game Ever
//
//  Created by Bob Warwick on 2015-03-23.
//  Copyright (c) 2015 Whole Punk Creators. All rights reserved.
//

#import "ViewController.h"
#import "TapForTap.framework/Headers/TFTTapForTap.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)break:(id)sender {

    [TFTTapForTap initializeWithAPIKey: @"3d323e6d58c83e06dba2547ec54f8afc"];

    [TFTInterstitial loadBreakInterstitialWithCallbackOnReceivedAd:^(TFTInterstitial *interstitial) {
        [interstitial showWithViewController:self];
    } onAdDidFail:^(TFTInterstitial *interstitial, NSString *reason) {
        NSLog(@"Ad failed: %@", reason);
    } onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
    
}

- (IBAction)requireRescue:(id)sender {

    [TFTInterstitial loadRescueInterstitialWithTitle:@"Rescue Title"
                                        brandingText: @"Our Brand"
                                      enticementText:@"we'll give you a pony"
                                   rewardDescription:@"It's a really nice pony"
                                          rewardIcon:[NSURL URLWithString:@"http://wholepunk.com/tmp/pretio/wholepunk_logo.png"]
                                     optInButtonText:@"Opt In Please"
                                        onReceivedAd:^(TFTInterstitial *interstitial) {
                                            [interstitial showWithViewController:self];
                                        } onAdDidFail:nil onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
    
}

- (IBAction)achieve:(id)sender {
    
    [TFTInterstitial loadAchievementInterstitialWithDescription:@"You achieved!"
                                              rewardDescription:@"a really shiny nickel"
                                                     rewardIcon:[NSURL URLWithString:@"http://wholepunk.com/tmp/pretio/wholepunk_logo.png"]
                                                   onReceivedAd:^(TFTInterstitial *interstitial) {
                                                       [interstitial showWithViewController:self];
                                                   } onAdDidFail:nil onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
