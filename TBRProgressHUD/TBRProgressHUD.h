//
//  TBRProgressHUD.h
//
//  Created by Luciano Marisi on 18/07/2014.
//  Copyright (c) 2014 TechBrewers LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBRProgressHUD : UIView

@property (nonatomic, copy) NSString *text;

- (instancetype)initWithView:(UIView *)view;

- (void)startAnimating;
- (void)stopAnimating;
- (void)show;
- (void)hide;


@end
