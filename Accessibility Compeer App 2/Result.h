//
//  Result.h
//  Accessibility Compeer App 2
//
//  Created by Borrower on 4/15/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//
@interface Result : NSObject {
	NSString *type;
	NSString *name;

}

@property (nonatomic, copy) NSString *type, *name;

+ (id)resultWithType:(NSString *)type name:(NSString *)name;

@end