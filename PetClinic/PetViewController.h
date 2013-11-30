//
//  PetViewController.h
//  PetClinic
//
//  Created by Tekhne on 11/30/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pet.h"
#import "PetAddEditViewController.h"

@interface PetViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgPhoto;
@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (weak, nonatomic) IBOutlet UILabel *txtWeight;
@property (weak, nonatomic) IBOutlet UILabel *txtGenre;
@property (weak, nonatomic) IBOutlet UILabel *txtKind;
@property (weak, nonatomic) IBOutlet UILabel *txtBreed;




@property (nonatomic, strong) Pet *pet;

@end
