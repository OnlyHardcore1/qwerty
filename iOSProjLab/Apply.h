//
//  Apply.h
//  iOSProjLab
//
//  Created by Идаятов Руслан on 19.08.14.
//  Copyright (c) 2014 Идаятов Руслан. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Apply : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tf_name;
@property (weak, nonatomic) IBOutlet UITextField *tf_phone;
@property NSMutableArray *listOfNames;
@property NSMutableArray *listOfPhones;

@end
