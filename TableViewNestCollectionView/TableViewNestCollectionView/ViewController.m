//
//  ViewController.m
//  TableViewNestCollectionView
//
//  Created by cuixin on 16/9/26.
//  Copyright © 2016年 cuixin. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate, TestTableViewCellDelegate>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    NSLog(@"self  = %lf",  self.view.frame.size.width);
    self.tableView.dataSource= self;
    self.tableView.delegate = self;
//    self.tableView.backgroundColor = [UIColor colorWithRed:1.00 green:0.85 blue:0.73 alpha:1.00];
    [self.view addSubview:self.tableView];

    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableViewCell *cell = [TestTableViewCell testTableViewCell:tableView];
    cell.delegate = self;
    cell.backgroundColor = [UIColor colorWithRed:1.00 green:0.85 blue:0.73 alpha:1.00];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"taleViewSelected");
    
}

-(void)selectIndex:(NSIndexPath *)indexPath{
    NSLog(@"selctedIndexPath.row ==%ld", indexPath.row);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
