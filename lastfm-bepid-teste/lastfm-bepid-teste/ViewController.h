//
//  ViewController.h
//  lastfm-bepid-teste
//
//  Created by Ezequiel Franca dos Santos on 08/03/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *catalogo;
    NSMutableArray *track;
    NSData *jsonDados;
}
@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) IBOutlet UILabel *labelAlbum;
@property (strong, nonatomic) IBOutlet UILabel *labelArtista;
@property (strong, nonatomic) IBOutlet UILabel *labelData;
@property (strong, nonatomic) IBOutlet UIWebView *webImage;
- (IBAction)contador:(id)sender;


@end
