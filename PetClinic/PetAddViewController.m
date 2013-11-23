//
//  PetAddViewController.m
//  PetClinic
//
//  Created by Tekhne on 11/23/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "PetAddViewController.h"

@interface PetAddViewController ()

@end

@implementation PetAddViewController

AppDelegate *app;

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
    // Obteniendo el AppDelegate de la Aplicacion (solo existe una instancia)
    app = [UIApplication sharedApplication].delegate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    
    Pet *pet = [NSEntityDescription insertNewObjectForEntityForName:@"Pet" inManagedObjectContext:app.managedObjectContext];
    
    pet.name = self.txtName.text;
    //pet.birthdate = self.txtBirthdate.text;
    
    pet.photo = UIImagePNGRepresentation(self.imgPhoto.image);
    
    pet.weight = [NSNumber numberWithDouble:[self.txtWeight.text doubleValue]];
    // TODO Completar las otras propiedades
    
    NSError *error;
    
    [app.managedObjectContext save:&error];
    
    if (error) {
        // Alert View .....
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)camera:(id)sender {
    
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypeCamera])
    {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.delegate = self;
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        imagePicker.mediaTypes = [NSArray arrayWithObjects:(NSString *) kUTTypeImage, nil];
        
        imagePicker.allowsEditing = NO;
        
        [self presentViewController:imagePicker animated:YES completion:nil];
        
        //newMedia = YES;
    }
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //[popoverController dismissPopoverAnimated:true];
    
    NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
        UIImage *image = [info
                          objectForKey:UIImagePickerControllerOriginalImage];
        
        self.imgPhoto.image = image;
//        if (newMedia)
//            UIImageWriteToSavedPhotosAlbum(image,
//                                           self,
//                                           @selector(image:finishedSavingWithError:contextInfo:),
//                                           nil);
    }
    else if ([mediaType isEqualToString:(NSString *)kUTTypeMovie])
    {
        // Code here to support video if enabled
    }
}



- (IBAction)album:(id)sender {
  
//    if ([popoverController isPopoverVisible]) {
//        [popoverController dismissPopoverAnimated:YES];
//    } else {
//        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]) {
//            UIImagePickerController *imagePicker =
//            [[UIImagePickerController alloc] init];
//            imagePicker.delegate = self;
//            imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//            imagePicker.mediaTypes = [NSArrayarrayWithObjects:
//                                      (NSString *) kUTTypeImage,
//                                      nil];
//            imagePicker.allowsEditing = NO;
//            
//            popoverController = [[UIPopoverController alloc] initWithContentViewController:imagePicker];
//            
//            popoverController.delegate = self;
//            
//            //[popoverController presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
//            // TODO Revisar si la forma de obtener este boton es la correcta
//            UIButton *btn = (UIButton *) sender;
//            [popoverControllerpresentPopoverFromRect:CGRectMake(btn.bounds.origin.x+385, btn.bounds.origin.y+45, 30.0f, 30.0f) inView:self.viewpermittedArrowDirections:UIPopoverArrowDirectionRightanimated:YES];
//            newMedia = NO;
//        }
//    }
//    
    
}
@end
