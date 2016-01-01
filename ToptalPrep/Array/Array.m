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

#pragma mark - OddOccurances

//https://codility.com/programmers/task/odd_occurrences_in_array/
+(int) findOddOccurances:(NSArray *) A{
    
    int count = ((NSNumber *)A[0]).intValue;
    for (NSInteger i=1; i<A.count; i++) {
        NSNumber *num = A[i];
         count ^=num.integerValue;
    }
    return count;
}

//Failed for large range values
+(int) findOddOccurancesNormal:(NSArray *) A{
    NSCountedSet *cSet = [[NSCountedSet alloc] initWithArray:A];
    NSLog(@"%@",cSet);
    for(NSNumber *num in cSet){
        if([cSet countForObject:num]==1)
            return num.intValue;
    }
    return -1;
}



@end
