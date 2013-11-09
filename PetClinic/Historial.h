//
//  Historial.h
//  PetClinic
//
//  Created by Tekhne on 11/9/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Historial : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSDate * nextDate;
@property (nonatomic, retain) NSString * diagnostic;
@property (nonatomic, retain) NSString * treatment;
@property (nonatomic, retain) NSData * voiceNotes;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSManagedObject *pet;

@end
