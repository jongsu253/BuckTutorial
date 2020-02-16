#import "ViewController.h"

@implementation ViewController {
  UILabel *_helloLabel;
}

- (void)viewDidLoad {
  self.view.backgroundColor = [UIColor whiteColor];
  [self setupView];
  [self setupLayout];
}

- (void)setupView {
  _helloLabel = [[UILabel alloc] init];
  _helloLabel.translatesAutoresizingMaskIntoConstraints = NO;
  [_helloLabel setText:@"Hello Buck!"];
  [self.view addSubview:_helloLabel];
}

- (void)setupLayout {
  [_helloLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
  [_helloLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
  [_helloLabel.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
}

@end
