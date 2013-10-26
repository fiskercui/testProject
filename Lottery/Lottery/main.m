//
//  main.m
//  Lottery
//
//  Created by 崔卫华 on 13-10-26.
//  Copyright (c) 2013年 崔卫华. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSCalendarDate* now = [[NSCalendarDate alloc] init];
        srandom(time(NULL));
        
        
        
        
        
        NSMutableArray* array = [[NSMutableArray alloc] init];
        int i = 0;
        for(int i = 0; i < 10; i++){
//            NSNumber* number = [[NSNumber alloc] initWithInt:3*i];
//            [array addObject:number];
            NSCalendarDate* iWeeksFromNow;
            iWeeksFromNow = [now dateByAddingYears:0
                                            months:0 days:i*7 hours:0 minutes:0 seconds:0];
            LotteryEntry* newEntry = [[LotteryEntry alloc] init];
            [newEntry setEntryDate:iWeeksFromNow];
            [array addObject:newEntry];
        }
        
//        for( i = 0 ; i < 10; i++){
//            NSNumber* number = [array objectAtIndex:i];
//            NSLog(@"The number at index is %d is %@", i, number);
//        }
        for(LotteryEntry* entryToPoint in array)
        {
            NSLog(@"%@", entryToPoint);
        }
        
    
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    
    
    
    return 0;
}

