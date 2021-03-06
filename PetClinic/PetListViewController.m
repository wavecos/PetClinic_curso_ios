//
//  PetListViewController.m
//  PetClinic
//
//  Created by Tekhne on 11/23/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "PetListViewController.h"

@interface PetListViewController ()

@end

@implementation PetListViewController

AppDelegate *app;
NSArray *pets;


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
	  app = [UIApplication sharedApplication].delegate;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshPets) name:@"refreshPets" object:nil];
    
    [self getPets];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Get Pets

-(void) getPets {
    
    //pets = [[NSArray alloc] init];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *pet = [NSEntityDescription entityForName:@"Pet" inManagedObjectContext:app.managedObjectContext];
    
    [fetchRequest setEntity:pet];
    
    NSError *error;
    
    pets = [app.managedObjectContext executeFetchRequest:fetchRequest error:&error];
}


#pragma mark CollectionView Methos

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [pets count];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    PetCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PetCell" forIndexPath:indexPath];
    
    Pet *pet = pets[indexPath.row];
    
    cell.lblName.text = pet.name;
    cell.imgPhoto.image = [UIImage imageWithData:pet.photo];
    
    return cell;
}


- (IBAction)refresh:(id)sender {
    [self refreshPets];
}

-(void) refreshPets {
    [self getPets];
    [self.collectionView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ViewPet"]) {
        NSArray *idxs = [self.collectionView indexPathsForSelectedItems];
        NSIndexPath *indexPath = idxs[0];
        NSLog(@"Indice seleccionado : %d", indexPath.row);
        
        Pet *pet = pets[indexPath.row];
        
        PetViewController *pvc = [segue destinationViewController];
        
        pvc.pet = pet;
        
    }
}



@end
