//
//  PetAddViewController.h
//  PetClinic
//
//  Created by Tekhne on 11/23/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "AppDelegate.h"
#import "Pet.h"

@interface PetAddEditViewController : UIViewController <UIImagePickerControllerDelegate, UIPopoverControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic) BOOL editMode;
@property (nonatomic, strong) Pet *pet;


@property (weak, nonatomic) IBOutlet UIImageView *imgPhoto;
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtBirthdate;
@property (weak, nonatomic) IBOutlet UITextField *txtWeight;
@property (weak, nonatomic) IBOutlet UIPickerView *pickGenderKindBreed;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)camera:(id)sender;
- (IBAction)album:(id)sender;



@end
