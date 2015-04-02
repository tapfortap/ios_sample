## How to Integrate TapForTap on iOS

- Create an iOS project

- Add the following libraries:
	`TapForTap.framework`
	`SystemConfigration.framework`
	`libsqlite3.dylib`
	`libxml2.dylib`
	`Social.framework`
	`MediaPlayer.framework`
	`Accounts.framework`
	`StoreKit.framework`
	`EventKit.framework`
	`EventKitUI.framework`
	`CoreTelephony.framework`
	`AVFoundation.framework`
	`AudioToolbox.framework`
	`iOS_Tutela_SDK.framework` (Not required with public release)
	`libz.dylib`
	`AdSupport.framework`
	`MobileCoreServices.framework`
	`CoreMotion.framework`
	`KiipSDK.framework` (Not required with public release)
	`PassKit.framework`
	`CoreMedia.framework`
	
- Add in the following resources:
	`MediaBrix.bundle`
	`close_button.png`
	`close_button@2x.png`
	`KiipSDKResources.bundle`
	
- Set "Bundle display name" in your apps Info.plist

- In the file where you want to show an ad:

```
#import "TapForTap.framework/Headers/TFTTapForTap.h"
```

- Initialize TapforTap when your app launches:

```
[TFTTapForTap initializeWithAPIKey: @"3d323e6d58c83e06dba2547ec54f8afc"];
```

- Show a Break interstitial:

```
[TFTInterstitial loadBreakInterstitialWithCallbackOnReceivedAd:^(TFTInterstitial *interstitial) {
    [interstitial showWithViewController:self];
} onAdDidFail:^(TFTInterstitial *interstitial, NSString *reason) {
    NSLog(@"Ad failed: %@", reason);
} onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
```

- Show a Break interstitial:

```
[TFTInterstitial loadBreakInterstitialWithCallbackOnReceivedAd:^(TFTInterstitial *interstitial) {
    [interstitial showWithViewController:self];
} onAdDidFail:^(TFTInterstitial *interstitial, NSString *reason) {
    NSLog(@"Ad failed: %@", reason);
} onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
```

- Show a Achievement interstitial:

```
[TFTInterstitial loadAchievementInterstitialWithDescription:@"You achieved!"
                                          rewardDescription:@"a really shiny nickel"
                                                 rewardIcon:[NSURL URLWithString:@"http://wholepunk.com/tmp/pretio/wholepunk_logo.png"]
                                               onReceivedAd:^(TFTInterstitial *interstitial) {
                                                   [interstitial showWithViewController:self];
                                               } onAdDidFail:nil onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
```

- Show a Rescue interstitial:

```
[TFTInterstitial loadRescueInterstitialWithTitle:@"Rescue Title"
                                    brandingText: @"Our Brand"
                                  enticementText:@"we'll give you a pony"
                               rewardDescription:@"It's a really nice pony"
                                      rewardIcon:[NSURL URLWithString:@"http://wholepunk.com/tmp/pretio/wholepunk_logo.png"]
                                 optInButtonText:@"Opt In Please"
                                    onReceivedAd:^(TFTInterstitial *interstitial) {
                                        [interstitial showWithViewController:self];
                                    } onAdDidFail:nil onAdDidShow:nil onAdWasTapped:nil onAdWasDismissed:nil];
```

- Show a Banner:

```
// Position a banner ad at the bottom of the screen
TFTBanner *bannerAd = [TFTBanner bannerWithFrame:CGRectMake(0, (self.view.frame.size.height - 50), self.view.frame.size.width, 50) delegate:nil];
[self.view addSubview:bannerAd];
```
