//
//  BuildMeUp.h
//  BuildMeUp
//
//  Created by Charlie Mills on 28/08/2013.
//  Copyright (c) 2013 Charlie Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface BuildMeUp : NSObject <AVAudioPlayerDelegate>

@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property (nonatomic, strong) NSString *buttercupPath;
@property (nonatomic) float startTime;
@property (nonatomic) float endTime;

- (void)buildMeUpPlease;

@end
