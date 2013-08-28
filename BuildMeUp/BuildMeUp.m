//
//  BuildMeUp.m
//  BuildMeUp
//
//  Created by Charlie Mills on 28/08/2013.
//  Copyright (c) 2013 Charlie Mills. All rights reserved.
//

#import "BuildMeUp.h"
#import "AVAudioPlayer+AGCategory.h"

@implementation BuildMeUp

@synthesize audioPlayer = _audioPlayer;

- (void)chillTheButtercupOut{
    NSLog(@"Butter my arse.");
    [_audioPlayer pauseWithFadeOut_AG];
        
}


- (void)buildMeUpPlease{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"buttercup.mp3"];

    
    if (_audioPlayer) {
        [_audioPlayer stop];
        _audioPlayer = nil;
    }
    
    NSLog(@"%@", filePath);
    
    _audioPlayer=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: filePath] error:NULL];
    _audioPlayer.delegate = self;
    [_audioPlayer play];
    
    CGFloat seconds = 9.0f;
    _audioPlayer.currentTime = seconds;
    
    
    CGFloat endTime = 10.f;
    
    while (_audioPlayer.isPlaying) {
        if (_audioPlayer.currentTime >= endTime + seconds) {
            [self chillTheButtercupOut];
            usleep(5000);
        }
    }
    
    
}



@end
