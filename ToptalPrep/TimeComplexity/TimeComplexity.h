//
//  TimeComplexity.h
//  ToptalPrep
//
//  Created by Rajan Twanabashu on 31/12/2015.
//  Copyright © 2015 IGC Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeComplexity : NSObject

+(int) Equi_Normal_Solution:(NSMutableArray *)A;
+(int) Equi:(NSArray *) A;

+(int) TapeEquilibrium:(NSArray *)A;

+(int) PermMissingElem:(NSArray *)A;

+(int) FrogJmp:(int) X andY:(int) Y andD:(int) D;
@end
