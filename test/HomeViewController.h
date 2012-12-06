//
//  HomeViewController.h
//  test
//
//  Created by Loïc on 04/12/12.
//  Copyright (c) 2012 Loïc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *resultTableView;

@property (strong, nonatomic) NSArray *epicerieList;

@end
