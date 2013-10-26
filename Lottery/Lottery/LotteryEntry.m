//
//  LotteryEntry.m
//  Lottery
//
//  Created by 崔卫华 on 13-10-26.
//  Copyright (c) 2013年 崔卫华. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry



-(id) init
{
    self = [super init];
    firstNumber = random()%100 + 1;
    secondNumber = random()%100 + 1;
    return self;
}

-(id) initWithEntryDate:(NSCalendarDate*) date
{
    self = [super init];
    entryDate = date;
    firstNumber = random()%100 + 1;
    secondNumber = random()%100 + 1;
    return self;
}

-(void) prepareRandomNumbers
{
    firstNumber = random()%100 + 1;
    secondNumber = random()%100 + 1;
}

-(void) setEntryDate:(NSCalendarDate *)date
{
//    ARC forbids explicit 
//    [date retain];
//    [entryDate release];
    entryDate = date;
}

-(NSCalendarDate*) entryDate
{
    return entryDate;
}

-(int) firstNumber
{
    return firstNumber;
}

-(int) secondNumber
{
    return secondNumber;
}

-(NSString*)description
{
//    NSString* result;
//    result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
//        [entryDate descriptionWithCalendarFormat:@"%b %d %y"], firstNumber, secondNumber];
//    return result;
    
    return [NSString stringWithFormat:@"%@ = %d and %d",
            [entryDate descriptionWithCalendarFormat:@"%b %d %Y"], firstNumber, secondNumber];
}


@end
