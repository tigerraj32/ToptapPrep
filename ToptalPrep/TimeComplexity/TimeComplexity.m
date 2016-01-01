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

+(int) TapeEquilibrium:(NSArray *)A{
    
   
    NSDecimalNumber *sum =  [A valueForKeyPath:@"@sum.self"];
    NSDecimalNumber *leftSum = [NSDecimalNumber decimalNumberWithDecimal:[((NSNumber *) A[0]) decimalValue]];
    NSDecimalNumber *rightSum = [sum decimalNumberBySubtracting:leftSum];
    NSDecimalNumber *diff = [leftSum decimalNumberBySubtracting:rightSum];
    NSDecimalNumber *tempDiff = [NSDecimalNumber zero];
    
    for (int i=1; i<A.count; i++) {
        NSDecimalNumber *num = [NSDecimalNumber decimalNumberWithDecimal:[((NSNumber *) A[0]) decimalValue]];
        leftSum  = [leftSum decimalNumberByAdding:num];
        rightSum = [sum decimalNumberBySubtracting:leftSum];
        tempDiff = [leftSum decimalNumberBySubtracting:rightSum];
        if ([tempDiff compare:diff]==NSOrderedAscending) {
            diff=tempDiff;
        }
        
    }

//    
//     NSInteger diff = 0; NSInteger tempDiff = 0;
//    
//    for (NSInteger i=0; i<A.count; i++) {
//        
//        leftSum = @(leftSum.integerValue +((NSNumber *) A[i]).integerValue);
//        rightSum = @(sum.integerValue -leftSum.integerValue);
//        tempDiff = labs(@(leftSum.integerValue - rightSum.integerValue).integerValue);
//        if (i==0) {
//            diff = tempDiff;
//        }else{
//            if (tempDiff<diff) {
//                diff=tempDiff;
//            }
//        }
//        
//        
//    }
//    return (int)diff;
    return 0;
}

@end
