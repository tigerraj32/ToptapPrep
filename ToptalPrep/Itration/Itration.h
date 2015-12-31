//
//  Itration.h
//  ToptalPrep
//
//  Created by IGC Technologies on 12/24/15.
//  Copyright © 2015 IGC Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Itration : NSObject

/*
 Fibonacci Sequence
 ---------------------------
 
 
 The Fibonacci Sequence is the series of numbers like:   0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
 The next number is found by adding up the two numbers before it.
 
 So we can write the rule:
 The Rule is xn = xn-1 + xn-2
 where:
 
 xn is term number "n"
 xn-1 is the previous term (n-1)
 xn-2 is the term before that (n-2)
 
 
 Golden Number:
 -----------------
 when we take  the result of dividing two successive  (one after the other) Fibonacci Numbers, their ratio is very close to the Golden Ratio "φ" which is approximately 1.618034...
 
 So fibonacci number at some number can be calculated by
 
 xn = (y^n - (1-y)^n) / √5 where y = 1.618034
 
 
 Implementation : creating a spiral
 
 */
+(NSArray*) getFibonacciSeries:(NSUInteger) n;
+(void) printRightAngledTriangle:(NSUInteger) n andUpsideDown:(BOOL) flag;
+(NSUInteger) getFactorialOf:(NSUInteger) n;

/*
 n
 Σk = n(n+1)/2
k=1
 */

+(NSUInteger) getSumOfNaturalNumberUpTo:(NSUInteger)n;

#pragma mark - BinaryGap - 

+(NSInteger) BinaryGap:(NSInteger)n;

@end

