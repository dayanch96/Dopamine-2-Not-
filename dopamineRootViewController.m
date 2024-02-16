#import "dopamineRootViewController.h"

@implementation dopamineRootViewController {
    WKWebView *_webView;
}

- (void)loadView {
    [super loadView];

    self.navigationController.navigationBarHidden = YES;

    _webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    _webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _webView.scrollView.scrollEnabled = NO;
    _webView.navigationDelegate = self;
    [self.view addSubview:_webView];

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://ellekit.space/dopamine/2.0"]];
    [_webView loadRequest:request];
}

@end
