//
//  ViewController.m
//  TableViewExperiment
//
//  Created by Jonathan Winger-lang on 9/09/2017.
//  Copyright © 2017 Jontelang. All rights reserved.
//

#import "ViewController.h"
#import "BaseTableViewCell.h"

@implementation ViewController

-(BaseTableViewDataSource *)tableViewDataSource{
    BaseTableViewDataSource *dataSource = [[BaseTableViewDataSource alloc] init];
    
    //
    // Section with "static cells"
    //
    BaseTableViewSection *section0 = [[BaseTableViewSection alloc] init];
    
    [section0 addEntry:[BaseTableViewEntry entryWithClass:[BaseTableViewCell class]
                                             cellSelector:@selector(show:)
                                                 cellData:@"Hello"]];
    
    [section0 addEntry:[BaseTableViewEntry entryWithClass:[BaseTableViewCell class]
                                             cellSelector:@selector(show:)
                                                 cellData:@"Hello again"]];
    
    //
    // Section with "dynamic" cells (like from a list)
    //
    BaseTableViewSection *section1 = [[BaseTableViewSection alloc] init];
    
    NSArray *items = @[@"A",@"B",@"C",@"D"];
    for (NSString *item in items) {
        [section1 addEntry:[BaseTableViewEntry entryWithClass:[BaseTableViewCell class]
                                                 cellSelector:@selector(show:)
                                                     cellData:item]];
    }
    
    
    //
    // Add all sections to datasource
    //
    [dataSource addSection:section0];
    [dataSource addSection:section1];
    return dataSource;
}

-(void)show:(id)arg{
    [[[UIAlertView alloc] initWithTitle:@"data:"
                                message:arg
                               delegate:nil
                      cancelButtonTitle:@"Ok"
                      otherButtonTitles:nil] show];
}

@end
