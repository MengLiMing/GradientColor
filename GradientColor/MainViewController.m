//
//  MainViewController.m
//  GradientColor
//
//  Created by my on 2016/12/2.
//  Copyright © 2016年 my. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
{
    NSArray *listArr;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主页面";
    
    
    listArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"gradient" ofType:@"plist"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return listArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"reuseIdentifier"];
    }
    
    cell.textLabel.text = listArr[indexPath.row][@"title"];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [NSClassFromString(listArr[indexPath.row][@"class"]) new];
    vc.title = listArr[indexPath.row][@"title"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
