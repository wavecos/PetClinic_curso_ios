//
//  ViewController.m
//  PetClinic
//
//  Created by Tekhne on 11/9/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

AppDelegate *app;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    app = [UIApplication sharedApplication].delegate;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)adicionarMascota:(id)sender {
    
    Pet *pet = [NSEntityDescription insertNewObjectForEntityForName:@"Pet" inManagedObjectContext:app.managedObjectContext];
    
    pet.name = @"Bobby";
    pet.genre = @"MALE";
    pet.weight = [NSNumber numberWithInt:3];
    pet.kind = @"Dog";
    pet.breed = @"Terrier";
    pet.birthdate = [NSDate date];
    
    [app.managedObjectContext save:nil];
    
}

- (IBAction)listarMascotas:(id)sender {
    [self obtenerMascotas];
}

-(void) obtenerMascotas {
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *pet = [NSEntityDescription entityForName:@"Pet" inManagedObjectContext:app.managedObjectContext];
    
    [fetchRequest setEntity:pet];
    
    NSError *error;
    
    NSArray *pets = [app.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    for (Pet *pet in pets) {
        NSLog(@"Nombre Mascota: %@", pet.name);
    }
    
}







@end
