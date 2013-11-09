//
//  Pet.h
//  PetClinic
//
//  Created by Tekhne on 11/9/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Historial;

@interface Pet : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * weight;
@property (nonatomic, retain) NSString * genre;
@property (nonatomic, retain) NSString * kind;
@property (nonatomic, retain) NSString * breed;
@property (nonatomic, retain) NSDate * birthdate;
@property (nonatomic, retain) NSDate * regdate;
@property (nonatomic, retain) NSData * photo;
@property (nonatomic, retain) NSSet *petHistorial;
@property (nonatomic, retain) NSManagedObject *owner;
@end

@interface Pet (CoreDataGeneratedAccessors)

- (void)addPetHistorialObject:(Historial *)value;
- (void)removePetHistorialObject:(Historial *)value;
- (void)addPetHistorial:(NSSet *)values;
- (void)removePetHistorial:(NSSet *)values;

@end
