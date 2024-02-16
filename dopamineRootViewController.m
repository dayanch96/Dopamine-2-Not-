#import "dopamineRootViewController.h"

@implementation dopamineRootViewController

- (void)loadView {
    [super loadView];

    self.navigationController.navigationBarHidden = YES;
    self.overrideUserInterfaceStyle = UIUserInterfaceStyleLight;

    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    gradientLayer.colors = @[(id)[UIColor colorWithRed:8/255.0 green:26/255.0 blue:30/255.0 alpha:1.0].CGColor, (id)[UIColor colorWithRed:11/255.0 green:49/255.0 blue:36/255.0 alpha:1.0].CGColor];
    gradientLayer.startPoint = CGPointMake(0.5, 0.0);
    gradientLayer.endPoint = CGPointMake(0.5, 1.0);
    [self.view.layer insertSublayer:gradientLayer atIndex:0];

    UIImage *iconImage = [UIImage imageNamed:@"icon.png"];
    UIImageView *iconImageView = [[UIImageView alloc] initWithImage:iconImage];
    iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:iconImageView];

    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:logoImage];
    logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    logoImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:logoImageView];

    UILabel *etaLabel = [[UILabel alloc] init];
    etaLabel.text = @"eta wen?";
    etaLabel.textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.7];
    etaLabel.textAlignment = NSTextAlignmentCenter;
    etaLabel.font = [UIFont systemFontOfSize:20.0];
    etaLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [etaLabel sizeToFit];
    [self.view addSubview:etaLabel];

    [NSLayoutConstraint activateConstraints:@[
        [logoImageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [logoImageView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [logoImageView.trailingAnchor constraintLessThanOrEqualToAnchor:self.view.trailingAnchor constant:-20.0],
        [logoImageView.leadingAnchor constraintLessThanOrEqualToAnchor:self.view.leadingAnchor constant:20.0],
        [logoImageView.widthAnchor constraintEqualToConstant:300.0],

        [iconImageView.centerXAnchor constraintEqualToAnchor:logoImageView.centerXAnchor],
        [iconImageView.bottomAnchor constraintEqualToAnchor:logoImageView.topAnchor constant:50.0],
        [iconImageView.heightAnchor constraintEqualToConstant:150.0],
        [iconImageView.widthAnchor constraintEqualToConstant:150.0],

        [etaLabel.centerXAnchor constraintEqualToAnchor:logoImageView.centerXAnchor],
        [etaLabel.topAnchor constraintEqualToAnchor:logoImageView.bottomAnchor],
    ]];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
