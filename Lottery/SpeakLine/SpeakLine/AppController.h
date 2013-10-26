//
//  AppController.h
//  SpeakLine
//
//  Created by 崔卫华 on 13-10-26.
//  Copyright (c) 2013年 崔卫华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject
{
    IBOutlet NSTextField* textField;
    IBOutlet NSButton* startButton;
    IBOutlet NSButton* stopButton;
    
    IBOutlet NSTableView* tableView;
    NSArray* voiceList;
    
    NSSpeechSynthesizer* speechSynth;
}

- (id)init;

- (IBAction)sayIt:(id)sender;

- (IBAction)stopIt:(id)sender;


@end
