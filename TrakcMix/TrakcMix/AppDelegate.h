//
//  AppDelegate.h
//  TrakcMix
//
//  Created by Kaiyin Zhong on 19/07/14.
//  Copyright (c) 2014 com.mycomp. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;

@property (strong) Track *track;
@end
