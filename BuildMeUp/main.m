//
//  main.m
//  BuildMeUp
//
//  Created by Charlie Mills on 28/08/2013.
//  Copyright (c) 2013 Charlie Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuildMeUp.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BuildMeUp* build = [[BuildMeUp alloc] init];
        [build buildMeUpPlease];
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

