//
//  LSIEmployee.m
//  KVO KVC Demo
//
//  Created by Paul Solt on 4/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIEmployee.h"

@interface LSIEmployee()  {
    BOOL _likesLongWalksOnBeach;
};

@end

@implementation LSIEmployee

- (NSString *)description {
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    formatter.allowsFloats = NO;
//    formatter.locale = [NSLocale ]
    formatter.usesGroupingSeparator = YES;
    
    //NSInteger (primitive) to NSNumber (object)
    NSString *salaryString = [formatter stringFromNumber:@(self.salary)];
    
    return [NSString stringWithFormat:@"%@, Title: %@, Salary: %@", self.name, self.jobTitle, salaryString];
}

@end
