//
//  HomeViewController.m
//  test
//
//  Created by Loïc on 04/12/12.
//  Copyright (c) 2012 Loïc. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize resultTableView;
@synthesize epicerieList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Home";
        //self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_favorites"];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor yellowColor];
	// Do any additional setup after loading the view.
    //CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height-88)
    //initWithFrame:[[UIScreen mainScreen] applicationFrame]
    self.resultTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height-44) style:UITableViewStylePlain];
    [self.resultTableView setBackgroundColor:[UIColor colorWithRed:(252/255.f) green:(252/255.f) blue:(252/255.f) alpha:1]];
    [self.resultTableView setSeparatorColor:[UIColor colorWithRed:(232/255.f) green:(232/255.f) blue:(232/255.f) alpha:1]];
    self.resultTableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    self.resultTableView.delegate = self;
    self.resultTableView.dataSource = self;
    [self.resultTableView reloadData];
    [self.view addSubview:self.resultTableView];
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 66;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title"];

    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Title"];
    }
    
    cell.imageView.image = [UIImage imageNamed:@"liste_image"];
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

@end
