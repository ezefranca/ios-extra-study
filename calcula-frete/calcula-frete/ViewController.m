//
//  ViewController.m
//  calcula-frete
//
//  Created by Ezequiel Franca dos Santos on 15/03/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import "ViewController.h"
#import "Frete.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoCalcular:(id)sender {
    Frete *f = [[Frete alloc]init];
    [f calculaFrete:[_labelPeso.text intValue] noEndereco:_labelCep.text];
}
//Métodos para ocultacao do teclado
//esse bool precisa associar com
//Select the text field in the view and display the Connections Inspector (View -> Utilities -> Connections Inspector)
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

// Use this method also if you want to hide keyboard when user touch in background

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_labelCep resignFirstResponder];
    [_labelPeso resignFirstResponder];
}

@end
