//
//  TimeComplexity.m
//  ToptalPrep
//
//  Created by Rajan Twanabashu on 31/12/2015.
//  Copyright © 2015 IGC Technologies. All rights reserved.
//

#import "TimeComplexity.h"

@implementation TimeComplexity

#pragma mark -  Equi -

/*
 it fails on large input data sets, since the time complexity is O(n2)
 it fails on large input values (for example if the input array contains values like MIN/MAX_INT) due to the arithmetic overflows
 */

+(int) Equi_Normal_Solution:(NSMutableArray *)A{
    //NSLog(@"%@",A);
    NSInteger arrayLength = A.count;
    for(NSInteger i=0;i<arrayLength;i++){
        
        NSMutableArray *rightArray = [NSMutableArray new];
        NSMutableArray *leftArray = [NSMutableArray new];
        
        NSInteger leftsum=0;
        NSInteger rightsum=0;
        
        for (NSInteger j=0; j<i; j++) {
            NSNumber *num =  A[j];
            [leftArray addObject:num];
            
            leftsum +=num.integerValue;
        }
        
        
        for (NSInteger k=i+1; k<arrayLength; k++) {
            NSNumber *num =  A[k];
            [rightArray addObject:num];
            
            rightsum +=num.integerValue;
        }
        
        // NSLog(@"leftSum[%@] = %ld  -- rightsum:[%@] = %ld",leftArray, leftsum,rightArray, rightsum);
        if (rightsum == leftsum) {
            return (int)i;
        }
        
    }
    return -1;
}


+(int) Equi:(NSArray *) A{
    
    if (A.count==0) {
        return -1;
    }
    NSNumber *sum =[NSNumber numberWithInt:0];
    for (NSInteger i=0; i<A.count; i++) {
        sum = @(sum.integerValue + ((NSNumber *)A[i]).integerValue);
    }
    
    NSNumber *leftSum = [NSNumber numberWithInt:0];
    NSNumber *rightSum = [NSNumber numberWithInt:0];
    
    for (NSInteger i=0; i<A.count; i++) {
        rightSum = @(sum.integerValue -leftSum.integerValue - ((NSNumber *) A[i]).integerValue);
        if ([rightSum isEqualToNumber:leftSum]) {
            return (int)i;
        }
        leftSum = @(leftSum.integerValue +((NSNumber *) A[i]).integerValue);
    }
    
    
    return -1;
}

//https://codility.com/demo/take-sample-test/tape_equilibrium/

+(int) TapeEquilibrium:(NSArray *)A{
    
    
    NSDecimalNumber *sumDecimal =  [A valueForKeyPath:@"@sum.self"];
    int sum = [sumDecimal intValue ];
    
    int leftSum = [((NSNumber *) A[0]) intValue];
    int rightSum = sum-leftSum;
    int diff = abs(leftSum-rightSum);
    NSLog(@"%d",diff);
    
    for (int i=1; i<A.count-1;i++) {
        
        int num = [((NSNumber *) A[i]) intValue];
        leftSum  +=num ;
        rightSum = sum-leftSum;
        int tempDiff =abs(leftSum-rightSum);
        if (tempDiff<diff) diff=tempDiff;
         NSLog(@"%d",tempDiff);
    }
    return diff;

}

@end
