//
//  AppController.m
//  SpeakLine
//
//  Created by 崔卫华 on 13-10-26.
//  Copyright (c) 2013年 崔卫华. All rights reserved.
//

#import "AppController.h"

@implementation AppController : NSObject


-(void) awakeFromNib
{
    NSString* defaultVoice = [NSSpeechSynthesizer defaultVoice];
    int defaultRow = [voiceList indexOfObject:defaultVoice];
    [tableView selectRow:defaultRow byExtendingSelection:NO];
    [tableView scrollRowToVisible:defaultRow];
}

- (id)init
{
    self = [super init];
    
    speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];

    NSLog(@"init");
    
    return self;
}
//- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender
//        didFinishSpeaking:(BOOL)complete
//{
//    NSLog(@"complete = %d", complete);
//}

- (void)speechSynthesizer:(NSSpeechSynthesizer* )sender
        didFinishSpeaking:(BOOL)complete
{
    NSLog(@"complete = %d", (int)complete);
    
}

-(int) numberOfRowsInTableView : (NSTableView*) tv
{
    return [voiceList count];
}


-(id) tableView:(NSTableView*) tv
    objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString* v = [voiceList objectAtIndex:row];
    NSDictionary* dict = [NSSpeechSynthesizer attributesForVoice:v];
    return [dict objectForKey:NSVoiceName];
}

-(IBAction)sayIt:(id)sender
{
    NSString* string = [textField stringValue];
    if([string length] == 0)
    {
        NSLog(@"string from %@ the length is zero", textField);
        return;
    }
    
    [speechSynth startSpeakingString:string];
    [speechSynth setDelegate:self];
    
    voiceList = [NSSpeechSynthesizer availableVoices];
    
    NSLog(@"have started to say:%@", string);
    
    [startButton setEnabled:FALSE];
    [stopButton setEnabled:TRUE];
    [tableView setEnabled:NO];
}

- (IBAction)stopIt:(id)sender
{
    NSLog(@"stopping");
    [speechSynth stopSpeaking];
    [startButton setEnabled:TRUE];
    [stopButton setEnabled:FALSE];
    [tableView setEnabled:YES];
}
@end

