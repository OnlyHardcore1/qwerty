//
//  Apply.m
//  iOSProjLab
//
//  Created by Идаятов Руслан on 19.08.14.
//  Copyright (c) 2014 Идаятов Руслан. All rights reserved.
//

#import "Apply.h"
#import "Information.h"

@interface Apply ()

@end

@implementation Apply

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    Information *info = [[Information alloc] init];
    info = [segue destinationViewController];
    if(self.listOfNames != nil){
        [self.listOfNames addObject:[self.tf_name text] ];
         [self.listOfPhones addObject:[self.tf_phone text] ];
      //NSLog(@"created);
}
      else
      {
          self.listOfNames = [[NSMutableArray alloc] init];
          self.listOfPhones = [[NSMutableArray alloc] init];
          [self.listOfNames addObject:[self.tf_name text] ];
          [self.listOfPhones addObject:[self.tf_phone text] ];
          //NSLog(@"added %@", info.name);
      }
      info.name  = self.listOfNames;
      info.phone = self.listOfPhones;
}
@end
