//
//  AppDelegate.h
//  PetClinic
//
//  Created by Tekhne on 11/9/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,retain,readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic,retain,readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,retain,readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

-(NSURL *) applicationDocumentsDirectory;

@end
