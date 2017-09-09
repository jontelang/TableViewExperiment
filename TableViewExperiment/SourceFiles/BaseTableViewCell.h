//
//  BaseTableViewCell.h
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 31/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell {
    __weak IBOutlet UILabel *cellLabelTitle;
}

-(void)setData:(id)data;

@end
