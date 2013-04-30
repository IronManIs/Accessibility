//
//  Result.m
//  Accessibility Compeer App 2
//
//  Created by Borrower on 4/15/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import "Result.h"

@implementation Result

@synthesize type, name;


+ (id)resultWithType:(NSString *)type name:(NSString *)name
{
	Result *newResult;
	newResult.type = type;
	newResult.name = name;
	return newResult;
}

@end
