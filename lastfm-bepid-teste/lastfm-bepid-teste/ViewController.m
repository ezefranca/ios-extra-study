//
//  ViewController.m
//  lastfm-bepid-teste
//
//  Created by Ezequiel Franca dos Santos on 08/03/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import "ViewController.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Inicializando...");
    jsonDados = [[NSData alloc] initWithContentsOfURL:
                         [NSURL URLWithString:@"http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=ezefranca&limit=200&api_key=27c4d9908fbb0f8a188336e46974b12c&format=json"]];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)contador:(id)sender {
    
    
    NSError *error;
    
    NSMutableDictionary *jsonDadosUsuario = [NSJSONSerialization
                                             JSONObjectWithData:jsonDados
                                             options:NSJSONReadingMutableContainers
                                             error:&error];

    NSDictionary *recenttracks = [jsonDadosUsuario objectForKey:@"recenttracks"];
    track = [recenttracks objectForKey:@"track"];
    
    if (!catalogo) {
        catalogo = [[NSMutableArray alloc] init];
    }
    else{
        
    UIStepper *contador = (UIStepper *)sender;
    
    
    NSString *name = [track[(int)contador.value] objectForKey:@"name"];
    NSString *image = [[track[(int)contador.value] objectForKey:@"image"][3] objectForKey:@"#text"];
    NSString *date = [[track[(int)contador.value] objectForKey:@"date"] objectForKey:@"#text"];
    NSString *artist = [[track[(int)contador.value] objectForKey:@"artist"] objectForKey:@"#text"];
    NSString *album = [[track[(int)contador.value] objectForKey:@"album"]objectForKey:@"#text"] ;
    
    
    NSURL *url = [NSURL URLWithString:image];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [self.webImage loadRequest:requestObj];
    
    NSLog(@"%d", (int)contador.value);
    _labelName.text = name;
    //NSLog(@"%@", album);
    _labelAlbum.text = album;
    //NSLog(@"%@", artist);
    _labelArtista.text = artist;
    //NSLog(@"%@", image);
    //NSLog(@"%@", date);
    _labelData.text = date;
    }
}
@end
