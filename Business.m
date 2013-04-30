//
//  Business.m
//  Testbar
//
//  Created by Borrower on 4/25/13.
//  Copyright (c) 2013 Borrower. All rights reserved.
//

#import "Business.h"

@implementation Business
@synthesize name, email, number, bathroom, ramp, ada, vision, reviews;

+(id)initWithName:(NSString *)name email:(NSString *)email bathroom:(NSString*)bathroom ramp:(NSString*)ramp ada:(NSString*)ada vision:(NSString*)vision reviews:(NSMutableArray*)reviews
{
    Business *newBusiness = [[self alloc] init];
    newBusiness.name = name;
    newBusiness.email = email;
    newBusiness.number = bathroom;
    newBusiness.ramp = ramp;
    newBusiness.ada = ada;
    newBusiness.vision = vision;
    newBusiness.reviews = reviews;
    return newBusiness;
}
@end

