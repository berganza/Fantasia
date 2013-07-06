//
//  ViewController.m
//  Fantasia
//
//  Created by LLBER on 27/03/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize buceador, reproductor, pez, cofre, unicornio, telefono, reloj;


-(IBAction)animarBuceador:(id)sender {
    
    // Animación del gif buceador
    
    buceador.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"Buceador1.png"],
                                [UIImage imageNamed:@"Buceador2.png"],
                                [UIImage imageNamed:@"Buceador3.png"],
                                [UIImage imageNamed:@"Buceador4.png"],
                                [UIImage imageNamed:@"Buceador5.png"],
                                [UIImage imageNamed:@"Buceador6.png"],nil];
    
    buceador.animationDuration = 2;
    
    [buceador startAnimating];
    
    
    
    
    // Animación translación buceador
    
    [UIView beginAnimations:@"avancedAnimations" context:nil];
    [UIView setAnimationDuration:15];
    
    CGRect buceadorFrame = buceador.frame;
    
    buceadorFrame.origin.x = -250;
    buceadorFrame.origin.y = 200;
    
    buceador.frame = buceadorFrame;
    [UIView commitAnimations];
    
    
    
    // Animación pez
    
    pez.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"Pez1.png"],
                                [UIImage imageNamed:@"Pez2.png"],
                                [UIImage imageNamed:@"Pez3.png"],
                                [UIImage imageNamed:@"Pez4.png"],
                                [UIImage imageNamed:@"Pez5.png"],
                                [UIImage imageNamed:@"Pez6.png"],
                                [UIImage imageNamed:@"Pez7.png"],
                                [UIImage imageNamed:@"Pez8.png"],
                                [UIImage imageNamed:@"Pez9.png"],
                                [UIImage imageNamed:@"Pez10.png"],nil];
    
    pez.animationDuration = 4;
    
    [pez startAnimating];
    
        
    
        
    
    // Sonido buceador
    
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"Buceo" ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    self.reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    [self.reproductor prepareToPlay];
    
    
    
    [self.reproductor play];
    
    reproductor.numberOfLoops= -1;
    

    
}

-(IBAction)stopBuceador:(id)sender {
    
    [buceador stopAnimating];
    
    [buceador invalidateIntrinsicContentSize];
    
    [cofre stopAnimating];
    

}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)abrirCofre:(id)sender {

    // Animación cofre
    
    cofre.animationImages = [NSArray arrayWithObjects:
                             [UIImage imageNamed:@"Cofre1.png"],
                             [UIImage imageNamed:@"Cofre2.png"],
                             [UIImage imageNamed:@"Cofre3.png"],
                             [UIImage imageNamed:@"Cofre4.png"],
                             [UIImage imageNamed:@"Cofre5.png"],
                             [UIImage imageNamed:@"Cofre6.png"],
                             [UIImage imageNamed:@"Cofre7.png"],
                             [UIImage imageNamed:@"Cofre8.png"],
                             [UIImage imageNamed:@"Cofre9.png"],
                             [UIImage imageNamed:@"Cofre10.png"],nil];
    
    
    [cofre setAnimationRepeatCount:1];
    cofre.animationDuration = 6;
    
    [cofre startAnimating];
    
    [UIView setAnimationDelegate:self];
    [cofre performSelector:@selector(isAnimating) withObject:nil afterDelay:cofre.animationDuration * cofre.animationRepeatCount];
    [UIView commitAnimations];



}


- (IBAction)animarUnicornio:(id)sender {
    
    // Animación del gif unicornio
    
    unicornio.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"Unicornio1.png"],
                                [UIImage imageNamed:@"Unicornio2.png"],
                                [UIImage imageNamed:@"Unicornio3.png"],
                                [UIImage imageNamed:@"Unicornio4.png"],
                                [UIImage imageNamed:@"Unicornio5.png"],
                                [UIImage imageNamed:@"Unicornio6.png"],
                                [UIImage imageNamed:@"Unicornio7.png"],
                                [UIImage imageNamed:@"Unicornio8.png"],nil];
    
    unicornio.animationDuration = 1;
    
    [unicornio startAnimating];
    
    
    
    
    // Sonido Caballo
    
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"HORSE" ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    self.reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    [self.reproductor prepareToPlay];
    
    [self.reproductor play];

    
    // Animación translación unicornio
    
    [UIView beginAnimations:@"avancedAnimations" context:nil];
    [UIView setAnimationDuration:10];
    
    CGRect unicornioFrame = unicornio.frame;
    
    unicornioFrame.origin.x = -250;
    unicornioFrame.origin.y = 80;
    
    unicornio.frame = unicornioFrame;
    [UIView commitAnimations];

}



- (IBAction)animarTelefono:(id)sender {
    
    // Animación telefono
    
    telefono.animationImages = [NSArray arrayWithObjects:
                           [UIImage imageNamed:@"Telefono1.png"],
                           [UIImage imageNamed:@"Telefono2.png"],
                           [UIImage imageNamed:@"Telefono3.png"],
                           [UIImage imageNamed:@"Telefono4.png"],
                           [UIImage imageNamed:@"Telefono5.png"],
                           [UIImage imageNamed:@"Telefono6.png"],nil];
    
    
    [telefono setAnimationRepeatCount:2];
    telefono.animationDuration = 4;
    
    [telefono startAnimating];
    

    
    [UIView setAnimationDelegate:self];
    [telefono performSelector:@selector(isAnimating) withObject:nil afterDelay:telefono.animationDuration * telefono.animationRepeatCount];
    [UIView commitAnimations];

    
    
        
    
    // Sonido telefono
    
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"TelfAnt" ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    self.reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    [self.reproductor prepareToPlay];
    
    
    
    [self.reproductor play];
    
    reproductor.numberOfLoops= 1;

}
- (IBAction)animarReloj:(id)sender {
    
    // Animación reloj
    
    reloj.animationImages = [NSArray arrayWithObjects:
                           [UIImage imageNamed:@"Reloj1.png"],
                           [UIImage imageNamed:@"Reloj2.png"],
                           [UIImage imageNamed:@"Reloj3.png"],
                           [UIImage imageNamed:@"Reloj4.png"],
                           [UIImage imageNamed:@"Reloj5.png"],
                           [UIImage imageNamed:@"Reloj6.png"],
                           [UIImage imageNamed:@"Reloj7.png"],
                           [UIImage imageNamed:@"Reloj8.png"],
                           [UIImage imageNamed:@"Reloj9.png"],
                           [UIImage imageNamed:@"Reloj10.png"],
                        [UIImage imageNamed:@"Reloj11.png"], nil];
    
    
    [reloj setAnimationRepeatCount:3];
    reloj.animationDuration = 4;
    
    [reloj startAnimating];
    
    
    
    [UIView setAnimationDelegate:self];
    [reloj performSelector:@selector(isAnimating) withObject:nil afterDelay:reloj.animationDuration * reloj.animationRepeatCount];
    [UIView commitAnimations];

    

    
    
    // Sonido reloj
    
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"CLOCK2" ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    self.reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    [self.reproductor prepareToPlay];
    
    
    
    [self.reproductor play];
    
    reproductor.numberOfLoops= 1;

}


@end



