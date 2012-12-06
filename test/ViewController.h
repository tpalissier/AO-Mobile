//
//  ViewController.h
//  test
//
//  Created by Loïc on 03/12/12.
//  Copyright (c) 2012 Loïc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *bouton1;

@property (weak, nonatomic) UIScrollView *scrollView;

- (void)buttonPressed:(UIButton *)sender;

@end
