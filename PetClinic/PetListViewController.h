//
//  PetListViewController.h
//  PetClinic
//
//  Created by Tekhne on 11/23/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Pet.h"
#import "PetCell.h"

@interface PetListViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>
- (IBAction)refresh:(id)sender;

@end
