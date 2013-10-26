//
//  LotteryEntry.h
//  Lottery
//
//  Created by 崔卫华 on 13-10-26.
//  Copyright (c) 2013年 崔卫华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject{
    NSCalendarDate *entryDate;
    int firstNumber;
    int secondNumber;
}

-(id) init;
-(id) initWithEntryDate:(NSCalendarDate*) date;

-(void) prepareRandomNumbers;
-(void) setEntryDate:(NSCalendarDate*) date;
-(NSCalendarDate*) entryDate;
-(int) firstNumber;
-(int) secondNumber;
-(NSString*) description;

@end
