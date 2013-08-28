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

- (void)buildMeUpPlease;

@end
