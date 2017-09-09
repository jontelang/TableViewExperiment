//
//  BaseTableViewDataSource.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "BaseTableViewDataSource.h"
#import "BaseTableViewSection.h"

#import <UIKit/UITableView.h> // For indexpath.section/.row

@implementation BaseTableViewDataSource

-(void)addSection:(BaseTableViewSection*)section{
    if( sections == nil ){
        sections = @[];
    }
    sections = [sections arrayByAddingObject:section];
}

-(BaseTableViewEntry*)entryAtIndexPath:(NSIndexPath*)indexPath{
    BaseTableViewSection *section = [sections objectAtIndex:indexPath.section];
    BaseTableViewEntry *entry = [section entryAtIndex:indexPath.row];
    return entry;
}

-(NSInteger)numberOfRowsInSection:(NSInteger)section{
    BaseTableViewSection *section_ = [sections objectAtIndex:section];
    return [section_ entryCount];
}

-(NSInteger)numberOfSections{
    return [sections count];
}

-(NSString*)titleForSection:(NSInteger)section{
    BaseTableViewSection *section_ = [sections objectAtIndex:section];
    return section_.title;
}

@end
