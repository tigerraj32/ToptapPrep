//
//  Array.m
//  ToptalPrep
//
//  Created by Rajan Twanabashu on 31/12/2015.
//  Copyright © 2015 IGC Technologies. All rights reserved.
//

#import "Array.h"
#import <Foundation/Foundation.h>


@implementation Array


//https://codility.com/programmers/task/odd_occurrences_in_array/
+(int) findOddOccurances:(NSArray *) A{
    
    NSUInteger count = ((NSNumber *)A[0]).integerValue;
    for (NSNumber *num in A) {
        count ^=num.integerValue;
    }
    NSLog(@"%ld", count);
//    
//    NSCountedSet *cSet = [[NSCountedSet alloc] initWithArray:A];
//    NSLog(@"%@",cSet);
//    for(NSNumber *num in cSet){
//        if([cSet countForObject:num]==1)
//            return num.intValue;
//    }
    return -1;
}

@end
