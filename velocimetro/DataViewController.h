//
//  DataViewController.h
//  velocimetro
//
//  Created by Luis Rodriguez on 27/12/15.
//  Copyright © 2015 skeletor12. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@end

