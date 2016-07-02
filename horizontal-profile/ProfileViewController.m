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
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.coverImage.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileImage.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.classNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.interestingFactLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileTextView.translatesAutoresizingMaskIntoConstraints = NO;
    [self removeConstraints];
    [self setConstraints];
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    [self removeConstraints];
    [self setConstraints];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)removeConstraints {
    [self.view removeConstraints:self.view.constraints];
    [self.coverImage removeConstraints:self.coverImage.constraints];
    [self.profileImage removeConstraints:self.profileImage.constraints];
    
}

- (void)setConstraints {
    if (self.view.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassRegular) {
        //shows cover image
        self.coverImage.hidden = NO;
        
        //coverImage
        [self.coverImage.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
        [self.coverImage.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.15].active = YES;
        [self.coverImage.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
        
        //profile pic
        [self.profileImage.topAnchor constraintEqualToAnchor:self.coverImage.bottomAnchor constant:20].active = YES;
        [self.profileImage.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
        [self.profileImage.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
        [self.profileImage.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.3].active = YES;
        
        //profile text
        [self.profileTextView.topAnchor constraintEqualToAnchor:self.coverImage.bottomAnchor constant:20].active = YES;
        [self.profileTextView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
        [self.profileTextView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20].active = YES;
        [self.profileTextView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.4].active = YES;
        
        //name
        [self.nameLabel.topAnchor constraintEqualToAnchor:self.profileImage.topAnchor].active = YES;
        [self.nameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.nameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.leftAnchor constant:-20].active = YES;
        
        //class
        [self.classNameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.classNameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.leftAnchor constant:-20].active = YES;
        [self.classNameLabel.centerYAnchor constraintEqualToAnchor:self.profileImage.centerYAnchor].active = YES;
        
        //fact
        [self.interestingFactLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.interestingFactLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.leftAnchor constant:-20].active = YES;
        [self.interestingFactLabel.bottomAnchor constraintEqualToAnchor:self.profileImage.bottomAnchor].active = YES;
        
        
    } else if (self.view.traitCollection.verticalSizeClass == UIUserInterfaceSizeClassRegular) {
        //shows cover image
        self.coverImage.hidden = NO;
        
        //coverImage
        [self.coverImage.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
        [self.coverImage.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.15].active = YES;
        [self.coverImage.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
        
        //profile text
        [self.profileTextView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.50].active = YES;
        [self.profileTextView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
        [self.profileTextView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
        [self.profileTextView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20].active = YES;
        
        //profile pic
        [self.profileImage.topAnchor constraintEqualToAnchor:self.coverImage.bottomAnchor constant:20].active = YES;
        [self.profileImage.bottomAnchor constraintEqualToAnchor:self.profileTextView.topAnchor constant:-20].active = YES;
        [self.profileImage.leadingAnchor constraintEqualToAnchor:self.profileTextView.leadingAnchor].active = YES;
        [self.profileImage.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.4].active = YES;
        
        //name
        [self.nameLabel.topAnchor constraintEqualToAnchor:self.profileImage.topAnchor].active = YES;
        [self.nameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.nameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-5].active = YES;
        
        //class
        [self.classNameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.classNameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-5].active = YES;
        [self.classNameLabel.centerYAnchor constraintEqualToAnchor:self.profileImage.centerYAnchor].active = YES;
        
        //fact
        [self.interestingFactLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.interestingFactLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-5].active = YES;
        [self.interestingFactLabel.bottomAnchor constraintEqualToAnchor:self.profileImage.bottomAnchor].active = YES;
    } else if (self.view.traitCollection.verticalSizeClass == UIUserInterfaceSizeClassCompact) {
        //hides cover image
        self.coverImage.hidden = YES;
        
        //profile pic
        [self.profileImage.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;
        [self.profileImage.bottomAnchor constraintEqualToAnchor:self.profileTextView.topAnchor constant:-20].active = YES;
        [self.profileImage.leadingAnchor constraintEqualToAnchor:self.profileTextView.leadingAnchor].active = YES;
        [self.profileImage.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.25].active = YES;
        
        //profile text
        [self.profileTextView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5].active = YES;
        [self.profileTextView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
        [self.profileTextView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
        [self.profileTextView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20].active = YES;
        
        //name
        [self.nameLabel.topAnchor constraintEqualToAnchor:self.profileImage.topAnchor].active = YES;
        [self.nameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.nameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-10].active = YES;
        
        //class
        [self.classNameLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.classNameLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-10].active = YES;
        [self.classNameLabel.centerYAnchor constraintEqualToAnchor:self.profileImage.centerYAnchor].active = YES;
        
        //fact
        [self.interestingFactLabel.leftAnchor constraintEqualToAnchor:self.profileImage.rightAnchor constant:20].active = YES;
        [self.interestingFactLabel.rightAnchor constraintEqualToAnchor:self.profileTextView.rightAnchor constant:-10].active = YES;
        [self.interestingFactLabel.bottomAnchor constraintEqualToAnchor:self.profileImage.bottomAnchor].active = YES;
        
    }
}

@end
