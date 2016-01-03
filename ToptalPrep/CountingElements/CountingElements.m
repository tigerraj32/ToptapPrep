//
//  CountingElements.m
//  ToptalPrep
//
//  Created by Rajan Twanabashu on 03/01/2016.
//  Copyright © 2016 IGC Technologies. All rights reserved.
//

#import "CountingElements.h"

@implementation CountingElements


+(BOOL) swapAndChecjSum:(NSArray *) A and:(NSArray *) B{
    
    return FALSE;
}

#pragma mark - FrogRiverOne
//https://codility.com/programmers/task/frog_river_one/
+(int) FronRiverOne:(NSArray *) A andDistance:(int ) X{
    for (int i=1; i<A.count; i++) {
        NSArray *arrr = [A subarrayWithRange:NSMakeRange(0, i)];
        NSOrderedSet *set = [NSOrderedSet orderedSetWithArray:arrr];
        //NSLog(@"%@",set);
          NSInteger last  = [((NSNumber *) [set lastObject]) integerValue];
        if (last == X) {
            return i-1;
        }
        
    }
    return -1;
    
}


@end
