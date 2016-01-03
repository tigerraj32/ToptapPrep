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

    NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:(NSInteger) X];
    for(int i=0;i<=X;i++){
        [arr addObject:@(0)];
    }
    
    int steps = 0;
    for (int i=0; i<A.count; i++) {
       
        NSNumber *num  = A[i];
        if ([arr[num.intValue] compare:@(0)]==NSOrderedSame) {
            steps +=1;
        }
        arr[num.intValue]=@(1);
        
        if (steps==X) {
            return i;
        }
    }
    
    return -1;
    
}


@end
