//
//  PetViewController.m
//  PetClinic
//
//  Created by Tekhne on 11/30/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "PetViewController.h"

@interface PetViewController ()

@end

@implementation PetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadPet) name:@"refreshPets" object:self.pet];

    [self loadPet];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadPet {
    self.title = self.pet.name;
    self.imgPhoto.image = [UIImage imageWithData:self.pet.photo];
    
    self.txtName.text = self.pet.name;
    
    NSString *weight = [NSString stringWithFormat:@"%d Kg.", [self.pet.weight intValue]];
    
    self.txtWeight.text = weight;
    self.txtKind.text = self.pet.kind;
    self.txtGenre.text = self.pet.genre;
    self.txtBreed.text = self.pet.breed;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"EditPet"]) {
        PetAddEditViewController *pavc = [segue destinationViewController];
        
        pavc.editMode = YES;
        pavc.pet = self.pet;
    }
}

@end
