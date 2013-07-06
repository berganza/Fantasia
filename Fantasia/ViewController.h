//
//  ViewController.h
//  Fantasia
//
//  Created by LLBER on 27/03/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) AVAudioPlayer *reproductor;

@property (nonatomic, strong) IBOutlet UIImageView * buceador;

-(IBAction)animarBuceador:(id)sender;

-(IBAction)stopBuceador:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *pez;

@property (weak, nonatomic) IBOutlet UIImageView *cofre;
- (IBAction)abrirCofre:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *unicornio;
- (IBAction)animarUnicornio:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *telefono;
- (IBAction)animarTelefono:(id)sender;



@property (weak, nonatomic) IBOutlet UIImageView *reloj;
- (IBAction)animarReloj:(id)sender;






@end
