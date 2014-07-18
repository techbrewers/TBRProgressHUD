//
//  TBRProgressHUD.m
//
//  Created by Luciano Marisi on 18/07/2014.
//  Copyright (c) 2014 TechBrewers LTD. All rights reserved.
//

#import "TBRProgressHUD.h"

static const CGSize kBackgroundSize = {150.0, 150.0};

@interface TBRProgressHUD ()

@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;
@property (nonatomic, strong) UILabel *textLabel;

@end

@implementation TBRProgressHUD

#pragma mark - Object lifecycle

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.backgroundView];
        [self addSubview:self.activityIndicatorView];
        [self addSubview:self.textLabel];
    }
    return self;
}

- (instancetype)initWithView:(UIView *)view
{
    return [self initWithFrame:view.bounds];
}

#pragma mark - Lazy initialization

- (UIView *)backgroundView
{
    if (_backgroundView == nil) {
        CGRect applicationFrame = [[UIScreen mainScreen] bounds];
        CGRect backgroundViewFrame = CGRectMake((applicationFrame.size.width - kBackgroundSize.width ) * 0.5,
                                             (applicationFrame.size.height - kBackgroundSize.height) * 0.5,
                                             kBackgroundSize.width,
                                             kBackgroundSize.height);
        _backgroundView = [[UIView alloc] initWithFrame:backgroundViewFrame];
        _backgroundView.backgroundColor = [UIColor blackColor];
        _backgroundView.alpha = 0.7;
        _backgroundView.layer.cornerRadius = 10.0;
    }
    return _backgroundView;
}

- (UIActivityIndicatorView *)activityIndicatorView
{
    if (_activityIndicatorView == nil) {
        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _activityIndicatorView.center = CGPointMake(self.center.x, self.center.y - 20);
        [_activityIndicatorView startAnimating];
    }
    return _activityIndicatorView;
}

- (UILabel *)textLabel
{
    if (_textLabel == nil) {
        CGRect applicationFrame = [[UIScreen mainScreen] bounds];
        
        CGRect labelFrame = CGRectMake((applicationFrame.size.width - kBackgroundSize.width ) * 0.5,
                                       (applicationFrame.size.height - kBackgroundSize.height) * 0.5 + 80,
                                       kBackgroundSize.width,
                                       50.0);
        _textLabel = [[UILabel alloc] initWithFrame:labelFrame];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.textColor = [UIColor whiteColor];
        _textLabel.font = [UIFont boldSystemFontOfSize:17.0];
    }
    return _textLabel;
}

#pragma mark - Custom properties

- (void)setText:(NSString *)text
{
    _text = [text copy];
    self.textLabel.text = text;
}

#pragma mark - Public methods

- (void)startAnimating{};
- (void)stopAnimating{};
- (void)show{};
- (void)hide{};



@end
