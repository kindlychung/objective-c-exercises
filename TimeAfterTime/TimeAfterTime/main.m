//
//  main.m
//  TimeAfterTime
//
//  Created by Kaiyin Zhong on 19/07/14.
//  Copyright (c) 2014 com.mycomp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"now lives at %p", now);
        NSLog(@"now is %@", now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"later lives at %p", later);
        NSLog(@"later is %@", later);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1984];
        [comps setMonth:6];
        [comps setDay:10];
        [comps setHour:0];
        [comps setMinute:0];
        [comps setSecond:0];
        NSLog(@"date of birth: %@", comps);
        NSCalendar *g = [[NSCalendar alloc]  initWithCalendarIdentifier:NSGregorianCalendar ];
        NSDate *dob = [g dateFromComponents:comps];
        NSLog(@"date of birth: %@", dob);
        double d = [now timeIntervalSinceDate:dob];
        NSLog(@"It has been %f seconds since you were born!", d);
    }
    return 0;
}

