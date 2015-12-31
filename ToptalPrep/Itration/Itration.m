//
//  Itration.m
//  ToptalPrep
//
//  Created by IGC Technologies on 12/24/15.
//  Copyright © 2015 IGC Technologies. All rights reserved.
//

#import "Itration.h"

@implementation Itration


+(NSArray *) getFibonacciSeries:(NSUInteger) n{
    
    int a = 0;
    int b = 1;
    NSMutableArray *fibonacciSequence = [NSMutableArray new];
    int result=0, count=0;
    while(count<=n){
        if (count == 0 || count ==1) {
            [fibonacciSequence addObject:[NSNumber numberWithInt:count]];
        }else{
            
            result = a + b;
            a=b;
            b=result;
            [fibonacciSequence addObject:[NSNumber numberWithInt:result]];
        }
        count++;
        
        
    }
    return [fibonacciSequence copy];
    
    
}

+(void) printRightAngledTriangle:(NSUInteger) n andUpsideDown:(BOOL) flag{
    NSMutableString *astricks = [NSMutableString new];
    [astricks appendString:@"\n"];
    
    if (flag) {
        for (NSUInteger i=1; i<=n; i++) {
            for (NSUInteger j=1; j<=i;j++) {
                [astricks appendString:@"* "];
            }
            [astricks appendString:@"\n"];
            
        }
    }else {
        for (NSUInteger i=n; i>=1; i--) {
            for (NSUInteger j=i; j>=1;j--) {
                [astricks appendString:@"* "];
            }
            [astricks appendString:@"\n"];
            
        }
    }
    
    NSLog(@"Printing Triangle %@", astricks);
}

+(NSUInteger) getFactorialOf:(NSUInteger) n{
    NSUInteger factorial = 1;;
    for(int i=1;i<=n;i++){
        factorial *=i;
    }
    return factorial;
}

+(NSUInteger) getSumOfNaturalNumberUpTo:(NSUInteger)n{
    return n*(n+1) / 2;
}


#pragma mark - BinaryGap -

+(NSInteger) BinaryGap:(NSInteger)n{
    
    NSMutableString *str = [NSMutableString stringWithFormat:@""];
    NSInteger zeroCount = 0, binaryGap=0; BOOL flag = 0;
    for(NSInteger numberCopy = n; numberCopy > 0; numberCopy >>= 1)
    {
        // Prepend "0" or "1", depending on the bit
        [str insertString:((numberCopy & 1) ? @"1" : @"0") atIndex:0];
        if ((numberCopy &1 ) ==0 && flag==1) {
            zeroCount +=1;
        }else{
            if (zeroCount>binaryGap) {
                binaryGap = zeroCount;
                
            }
            zeroCount=0;
            flag=0;
        }
        
        if ((numberCopy&1)==1) {
            flag=1;
        }
    }
    NSLog(@"%@", str);
    
    
    return binaryGap;
}

@end
