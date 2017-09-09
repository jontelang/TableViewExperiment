//
//  ViewController.m
//  TableViewExperiment
//
//  Created by Jonathan Winger-lang on 9/09/2017.
//  Copyright © 2017 Jontelang. All rights reserved.
//

#import "ViewController.h"
#import "BaseTableViewCell.h"
#import "ImageCell.h"

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
    // Section with other cell
    //
    BaseTableViewSection *section2 = [[BaseTableViewSection alloc] init];
    
    [section2 addEntry:[BaseTableViewEntry entryWithClass:[ImageCell class]
                                             cellSelector:@selector(show:)
                                                 cellData:@"img"]];
    
    //
    // Section with some other type of cell setup based on input in array
    //
    BaseTableViewSection *section3 = [[BaseTableViewSection alloc] init];
    
    NSArray *arr = @[
                       @[
                           @"ImageCell",
                           @"img"
                        ],
                       @[
                           @"BaseTableViewCell",
                           @"img"
                        ]
                       ];
    
    for (NSArray *a in arr) {
        Class classToUse = NSClassFromString(a[0]);
        NSString *inputToUse = a[1];
        [section3 addEntry:[BaseTableViewEntry entryWithClass:classToUse
                                                 cellSelector:@selector(show:)
                                                     cellData:inputToUse]];
    }
    
    
    //
    // Add all sections to datasource
    //
    [dataSource addSection:section0];
    [dataSource addSection:section1];
    [dataSource addSection:section2];
    [dataSource addSection:section3];
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
