//
//  BaseTableViewController.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "BaseTableViewController.h"
#import "BaseTableViewCell.h"

@implementation BaseTableViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    baseTableViewDataSource = [self tableViewDataSource];
}

-(BaseTableViewDataSource*)tableViewDataSource{
    [NSException raise:@"Implement -(BaseTableViewDataSource*)tableViewDataSource" format:@""];
    return nil;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableViewEntry *entry = [baseTableViewDataSource entryAtIndexPath:indexPath];
    
    // This probably should go somewhere else right?
    [tableView registerNib:entry.nib forCellReuseIdentifier:entry.reuseIdentifier];
    
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:entry.reuseIdentifier forIndexPath:indexPath];
    [cell setData:entry.cellData];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [baseTableViewDataSource numberOfRowsInSection:section];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [baseTableViewDataSource numberOfSections];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableViewEntry *entry = [baseTableViewDataSource entryAtIndexPath:indexPath];
    // I purposefully do NOT check respondsToSelector so that a VC will crash
    // have I not implemented the selector. Just as a reminder when implementing
    [self performSelector:entry.cellSelector withObject:entry.cellData];
}

@end
