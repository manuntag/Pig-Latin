//
//  main.m
//  Pig Latin
//
//  Created by David Manuntag on 2015-01-16.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pig latin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        pig_latin * pigLatin = [[pig_latin alloc]init];
    
        [pigLatin pigLatin:@"the elephant consumed potatoe chips tonight"];
    
        
    }
    return 0;
}
