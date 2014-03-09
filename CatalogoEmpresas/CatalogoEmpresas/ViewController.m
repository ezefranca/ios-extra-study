//
//  ViewController.m
//  CatalogoEmpresas
//
//  Created by Ezequiel Franca dos Santos on 08/03/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import "ViewController.h"
#import "Empresa.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mensagemSalvar.hidden = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)salvaEmpresa:(Empresa *) novaEmpresa {
    if (!catalogo) {
        catalogo = [[NSMutableArray alloc] init];
    }
    
    [catalogo addObject:novaEmpresa];
    [self mostraCatalogo];
}

-(void) mostraCatalogo
{
NSLog(@"******* Listando todas empresas *******");
      for (Empresa *empresa in catalogo) {
        
          NSLog(@"A empresa %@ tem %d funcionários", empresa.nome, empresa.quantidadeFuncionarios);
      }
}

- (IBAction)botaoSalvar:(id)sender {
  

    Empresa *e = [[Empresa alloc] init];
    e.nome = self.labelEmpresa.text;
    e.quantidadeFuncionarios = [self.labelFuncionario.text intValue];
    [self salvaEmpresa:e];
    //NSLog(@"Empresa criada. Nome=%@, funcionários=%d", e.nome, e.quantidadeFuncionarios);
    self.mensagemSalvar.alpha = 0;
    [UIView animateWithDuration:1 animations:^{
        self.mensagemSalvar.hidden = NO;
        self.mensagemSalvar.alpha = 1;
    } completion:^(BOOL finalizado) {
        [UIView animateWithDuration:1 delay:1 options:0 animations:^{
            self.mensagemSalvar.alpha = 0;
        } completion:^(BOOL finalizado) {
            self.mensagemSalvar.hidden = YES;
        }];
    }];

}

- (IBAction)incrementarValor:(id)sender {
    UIStepper *incrementador = (UIStepper *)sender;
    self.labelFuncionario.text = [NSString stringWithFormat:@"%d", (int)incrementador.value];
}





//Métodos para ocultacao do teclado
//esse bool precisa associar com
//Select the text field in the view and display the Connections Inspector (View -> Utilities -> Connections Inspector)
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
	[textField resignFirstResponder];
	return YES;
}




-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}


// Use this method also if you want to hide keyboard when user touch in background

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_labelFuncionario resignFirstResponder];
    [_labelEmpresa resignFirstResponder];
}

@end
