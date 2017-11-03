//
//  ViewController.m
//  TableViewSample
//
//  Created by LongCh on 2017/10/9.
//  Copyright © 2017年 LongCh. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
@interface ViewController () <UITableViewDataSource>
@property (nonatomic,strong) NSArray *groups;

@end

@implementation ViewController
//隐藏顶部状态栏
- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (NSArray *)groups{
    if(_groups == nil){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"carSrc.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *arrayModel = [[NSMutableArray alloc] init];
        for (NSDictionary *dict in array) {
            Group *group = [Group groupWithDict:dict];
            [arrayModel addObject:group];
        }
        _groups = arrayModel;
    }
    return _groups;
}
//返回多少组数据
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.groups.count;
}
//每组有多少行数据
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    Group *group = self.groups[section];
    return group.brands.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Group *group = self.groups[indexPath.section];
    UITableViewCell *tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    NSString *brand = group.brands[indexPath.row];
    tableViewCell.textLabel.text = brand;
    return tableViewCell;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    Group *group = self.groups[section];
    return group.yieldy;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
     Group *group = self.groups[section];
    return group.desc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
