//
//  ViewController.m
//  demo
//
//  Created by diaolong on 16/2/1.
//  Copyright © 2016年 diaolong. All rights reserved.
//

#import "ViewController.h"
#import "DLPickerView.h"

#define TimeSeparator   @":"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectOwnerGender:(UIButton *)sender {
    DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@"先生",@"女士"]
                                                       withSelectedItem:sender.titleLabel.text
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:selectedItem forState:UIControlStateNormal];
                                                      }
                                ];
    
    [pickerView show];
}
- (IBAction)selectTime:(UIButton *)sender {
    DLPickerView *pickerView = [[DLPickerView alloc] initWithPlistName:@"Time"
                                                      withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:TimeSeparator]
                                                     withSelectedBlock:^(id selectedItem) {
                                                         [sender setTitle:[selectedItem componentsJoinedByString:TimeSeparator] forState:UIControlStateNormal];
                                                      }
                                ];
    
    [pickerView show];
}


@end
