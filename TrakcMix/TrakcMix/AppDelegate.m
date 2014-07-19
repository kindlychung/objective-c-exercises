//
//  AppDelegate.m
//  TrakcMix
//
//  Created by Kaiyin Zhong on 19/07/14.
//  Copyright (c) 2014 com.mycomp. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)mute:(id)sender {
    NSLog(@"sent a mute: msg");
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    NSString *senderName = nil;
    if(sender == self.textField) {
        senderName = @"textField";
    }
    else {
        senderName = @"slider";
    }
    NSLog(@"%@ sent takeFloatValueForValueFrom: with value %1.2f", senderName, [sender floatValue]);
}
@end
