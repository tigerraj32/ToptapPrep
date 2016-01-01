//
//  main.m
//  ToptalPrep
//
//  Created by IGC Technologies on 12/24/15.
//  Copyright © 2015 IGC Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Itration.h"
#import "TimeComplexity.h"
#import "Array.h"



int solution(NSMutableArray *A) {
    return  -1;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        /*
         //Lesson 1
         NSUInteger naturalNumber = 12;
         
         NSLog(@"maximum binary count:%ld", [Itration BinaryGap:561892]);
         
         NSLog(@"Fibonacci Sequence %@", [Itration getFibonacciSeries:naturalNumber]);
         
         [Itration printRightAngledTriangle:naturalNumber andUpsideDown:TRUE];
         [Itration printRightAngledTriangle:naturalNumber andUpsideDown:FALSE];
         
         NSLog(@"Factorial result %ld",[Itration getFactorialOf:naturalNumber]);
         NSLog(@"Sum of Natural number:%ld", [Itration getSumOfNaturalNumberUpTo:naturalNumber]);
         
         */
        
        /*
         //Lesson 2
         NSArray *A = @[@(3),@(2),@(3),@(2),@(4),@(5),@(6),@(5),@(6)];
         NSLog(@"%d",[Array findOddOccurances:A]);
         */
        
        
        //Lesson 3
        
        NSArray *A = @[@(-1),@(3),@(-4),@(5),@(1),@(-6),@(2),@(1)];
        NSNumber *sum = [A valueForKeyPath:@"@sum.self"];
        NSLog(@"%@",sum);
        
        //solution([A mutableCopy]);
        NSLog(@"Tape Equilibrium:%d", [TimeComplexity Equi_Normal_Solution:[A mutableCopy]]);
        NSLog(@"Tape Equilibrium:%d", [TimeComplexity Equi:A]);
        A = @[@(3),@(1),@(2),@(4),@(3)];
        NSLog(@"Tape Equilibrium %d",[TimeComplexity TapeEquilibrium:A]);
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
