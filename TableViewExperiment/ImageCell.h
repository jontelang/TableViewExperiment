//
//  ImageCell.h
//  TableViewExperiment
//
//  Created by Jonathan Winger-lang on 9/09/2017.
//  Copyright © 2017 Jontelang. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface ImageCell : BaseTableViewCell {
    __weak IBOutlet UIImageView *contentImageView;
}

@end
