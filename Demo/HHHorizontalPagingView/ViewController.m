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
//    pagingView.segmentButtonSize = CGSizeMake(60., 30.);              //自定义segmentButton的大小
//    pagingView.segmentView.backgroundColor = [UIColor grayColor];     //设置segmentView的背景色
    
    //设置需放大头图的top约束
    /*
    pagingView.magnifyTopConstraint = headerView.headerTopConstraint;
    [headerView.headerImageView setImage:[UIImage imageNamed:@"headerImage"]];
    [headerView.headerImageView setContentMode:UIViewContentModeScaleAspectFill];
     */
    
    [self.view addSubview:pagingView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
