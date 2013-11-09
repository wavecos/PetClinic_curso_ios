//
//  Owner.h
//  PetClinic
//
//  Created by Tekhne on 11/9/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Pet;

@interface Owner : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSString * mobile;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * addressLocation;
@property (nonatomic, retain) NSString * ownerType;
@property (nonatomic, retain) Pet *pet;

@end
