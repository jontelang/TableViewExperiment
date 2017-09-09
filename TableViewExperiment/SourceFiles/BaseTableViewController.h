//
//  BaseTableViewController.h
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BaseTableViewDataSource.h"
#import "BaseTableViewSection.h"
#import "BaseTableViewEntry.h"

@interface BaseTableViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>{
    BaseTableViewDataSource *baseTableViewDataSource;
}

/*!
 * @discussion Should contain a datasource with at least one section and one entry.
 * This will be called only once and then stored.
 */
-(BaseTableViewDataSource*)tableViewDataSource;

@end
