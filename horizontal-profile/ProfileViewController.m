//
//  ProfileViewController.m
//  horizontal-profile
//
//  Created by Michael Amundsen on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *coverImage;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *classNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *interestingFactLabel;
@property (weak, nonatomic) IBOutlet UITextView *profileTextView;


@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //UIImage *coverPhotoPlaceholder = [UIImage imageNamed:@"coverPhotoDefault.png"];
    //self.coverImage = [[UIImageView alloc] initWithImage:coverPhotoPlaceholder];
    
    [self.view removeConstraints:self.view.constraints];
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.nameLabel removeConstraints:self.nameLabel.constraints];
    self.coverImage.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileImage.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.classNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.interestingFactLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileTextView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    //coverImage
    [self.coverImage.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.coverImage.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.coverImage.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.coverImage.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.15].active = YES;
    
    
    //profile picture
    [self.profileImage.topAnchor constraintEqualToAnchor:self.coverImage.bottomAnchor constant:40].active = YES;
    [self.profileImage.bottomAnchor constraintEqualToAnchor:self.profileTextView.topAnchor constant:-40].active = YES;
    [self.profileImage.leftAnchor constraintEqualToAnchor:self.profileTextView.leftAnchor constant:5].active = YES;
    [self.profileImage.widthAnchor constraintEqualToAnchor:self.profileTextView.widthAnchor multiplier:0.35].active = YES;
    
    
    //Profile textField
    [self.profileTextView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.90].active = YES;
    [self.profileTextView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.50].active = YES;
    [self.profileTextView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.profileTextView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    
    //name
    [self.nameLabel.topAnchor constraintEqualToAnchor:self.profileImage.topAnchor].active = YES;
    [self.nameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
    [self.nameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-5].active = YES;
    
    //[self.nameLabel.bottomAnchor constraintEqualToAnchor:self.classNameLabel.topAnchor constant:-20].active = YES;
    //[self.nameLabel.heightAnchor constraintEqualToAnchor:self.profileImage.heightAnchor multiplier:0.33].active = YES;
    //[self.nameLabel.widthAnchor constraintEqualToAnchor:self.profileTextView.widthAnchor multiplier:0.55].active = YES;
    
    //class
    [self.classNameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
    [self.classNameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-5].active = YES;
    [self.classNameLabel.centerYAnchor constraintEqualToAnchor:self.profileImage.centerYAnchor].active = YES;
    //[self.classNameLabel.bottomAnchor constraintEqualToAnchor:self.interestingFactLabel.topAnchor constant:-20].active = YES;
    //[self.classNameLabel.topAnchor constraintEqualToAnchor:self.nameLabel.bottomAnchor constant:20].active = YES;
    //[self.classNameLabel.widthAnchor constraintEqualToAnchor:self.profileTextView.widthAnchor multiplier:0.55].active = YES;
    //[self.classNameLabel.heightAnchor constraintEqualToAnchor:self.profileImage.heightAnchor multiplier:0.33].active = YES;
    
    
    
    //fact
    [self.interestingFactLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
    [self.interestingFactLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-5].active = YES;
    [self.interestingFactLabel.bottomAnchor constraintEqualToAnchor:self.profileImage.bottomAnchor].active = YES;
    //[self.interestingFactLabel.topAnchor constraintEqualToAnchor:self.classNameLabel.bottomAnchor constant:20].active = YES;
    //[self.interestingFactLabel.widthAnchor constraintEqualToAnchor:self.profileTextView.widthAnchor multiplier:0.55].active = YES;
    //[self.interestingFactLabel.heightAnchor constraintEqualToAnchor:self.profileImage.heightAnchor multiplier:0.33].active = YES;
    
    
    
    
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
