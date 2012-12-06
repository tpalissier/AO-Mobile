//
//  ViewController.m
//  test
//
//  Created by Loïc on 03/12/12.
//  Copyright (c) 2012 Loïc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor yellowColor];
    
    // add scroll
    // add all stuff to scrollview instead of self.view !
    //self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    //self.scrollView.contentSize = CGSizeMake(320, 480);
    // resize scrollview to its parent view
    //self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    //bouton
	self.bouton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.bouton1.frame = CGRectMake(100, 100, 100, 44);
    [self.bouton1 setTitle:@"bouton 1" forState:UIControlStateNormal];
    [self.view addSubview:self.bouton1];
    
    //label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 44)];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"label test";
    [self.view addSubview:label];
    
    //listener
    [self.bouton1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    //add image
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nom_image"]];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    imageView.frame = self.view.frame;
    [self.view addSubview:imageView];
    
    //textarea
    UITextView *textarea = [[UITextView alloc] initWithFrame:CGRectMake(50, 300, 300, 180)];
    textarea.font = [UIFont fontWithName:@"Helvetica" size:15];
    textarea.editable = NO;
    textarea.text = @"bla bla bla";
    [self.view addSubview:textarea];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(UIButton *)sender
{
    //check title of pressed button
    if ([sender isEqual:self.bouton1]) {
        NSLog(@"OKKKK");
    }
}

@end
