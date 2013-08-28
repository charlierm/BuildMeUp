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
@synthesize buttercupPath = _buttercupPath;
@synthesize startTime = _startTime;
@synthesize endTime = _endTime;

-(id)init{
    self = [super init];
    if (!_buttercupPath) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        _buttercupPath = [documentsDirectory stringByAppendingPathComponent:@"buttercup.mp3"];
    }
    _startTime = 10;
    _endTime = 15;
    return self;
}

- (void)chillTheButtercupOut{
    NSLog(@"Butter my arse.");
    [_audioPlayer stopWithFadeOutDuration_AG:5 completion:^{
        exit(EXIT_SUCCESS);
    }];
        
}


- (void)buildMeUpPlease{
    
    if (_audioPlayer) {
        [_audioPlayer stop];
        _audioPlayer = nil;
    }
    
    
    _audioPlayer=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: _buttercupPath] error:NULL];
    _audioPlayer.delegate = self;
    
    _audioPlayer.currentTime = _startTime;
    
    [_audioPlayer play];
    
    
    while (_audioPlayer.isPlaying) {
        if (_audioPlayer.currentTime >= _endTime) {
            [_audioPlayer stop];
        }
    }
    
    
}



@end
