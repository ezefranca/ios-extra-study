//
//  ViewController.h
//  CatalogoEmpresas
//
//  Created by Ezequiel Franca dos Santos on 08/03/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
NSMutableArray *catalogo;
}
@property (strong, nonatomic) IBOutlet UITextField *labelEmpresa;
@property (strong, nonatomic) IBOutlet UITextField *labelFuncionario;
@property (strong, nonatomic) IBOutlet UILabel *mensagemSalvar;
- (IBAction)botaoSalvar:(id)sender;
- (IBAction)incrementarValor:(id)sender;
- (IBAction)textFieldReturn:(id)sender;
-(BOOL) textFieldShouldReturn:(UITextField *)textField;
@end
