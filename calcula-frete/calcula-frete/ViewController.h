//
//  ViewController.h
//  calcula-frete
//
//  Created by Ezequiel Franca dos Santos on 15/03/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *labelCep;
@property (strong, nonatomic) IBOutlet UITextField *labelPeso;
- (IBAction)botaoCalcular:(id)sender;

@end
