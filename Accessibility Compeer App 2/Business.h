//
//  Business.h
//  Testbar
//
//  Created by Borrower on 4/25/13.
//  Copyright (c) 2013 Borrower. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Business : NSObject{
    NSString *name;
    NSString *email;
    NSString *number;
    NSString *bathroom;
    NSString *ramp;
    NSString *ada;
    NSString *vision;
    NSMutableArray *reviews;
    
}
@property (nonatomic, strong) NSString *name, *email, *number, *bathroom, *ramp, *ada, *vision;
@property (nonatomic, strong) NSMutableArray *reviews;

+(id)initWithName:(NSString *)name email:(NSString *)email bathroom:(NSString *)bathroom ramp:(NSString *)ramp ada:(NSString *)ada vision:(NSString *)vision reviews:(NSMutableArray *)reviews;

@end
