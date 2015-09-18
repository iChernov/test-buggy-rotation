//
//  ViewController.m
//  iii
//
//  Created by HeKu GmbH on 18/09/15.
//  Copyright © 2015 HeKu IT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (IBAction)pressed:(id)sender {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, M_PI * 0.8, 0.0f, 1.0f, 0.0f);
    [UIView animateWithDuration:1.0 animations:^{
        self.tF.layer.transform = rotationAndPerspectiveTransform;
    } completion:^(BOOL finished){
        // code to be executed when flip is completed
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
