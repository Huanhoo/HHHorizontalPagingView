//
//  ViewController.m
//  HHHorizontalPagingView
//
//  Created by Huanhoo on 15/7/16.
//  Copyright (c) 2015年 Huanhoo. All rights reserved.
//

#import "ViewController.h"
#import "HHHorizontalPagingView.h"
#import "HHHeaderView.h"
#import "HHContentTableView.h"
#import "HHContentCollectionView.h"
#import "HHContentScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HHHeaderView *headerView                = [HHHeaderView headerView];
    HHContentTableView *tableView           = [HHContentTableView contentTableView];
    HHContentCollectionView *collectionView = [HHContentCollectionView contentCollectionView];
    HHContentScrollView *scrollView         = [HHContentScrollView contentScrollView];
    
    NSMutableArray *buttonArray = [NSMutableArray array];
    for(int i = 0; i < 3; i++) {
        UIButton *segmentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [segmentButton setBackgroundImage:[UIImage imageNamed:@"button_normal"] forState:UIControlStateNormal];
        [segmentButton setBackgroundImage:[UIImage imageNamed:@"button_selected"] forState:UIControlStateSelected];
        [segmentButton setTitle:[NSString stringWithFormat:@"view%@",@(i)] forState:UIControlStateNormal];
        [segmentButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        [buttonArray addObject:segmentButton];
    }
    HHHorizontalPagingView *pagingView = [HHHorizontalPagingView pagingViewWithHeaderView:headerView headerHeight:300.f segmentButtons:buttonArray segmentHeight:60 contentViews:@[tableView, collectionView, scrollView]];
    [self.view addSubview:pagingView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
