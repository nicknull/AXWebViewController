//
//  RTLTool.m
//  AXWebViewController
//
//  Created by WO on 2023/9/5.
//  Copyright © 2023 AiXing. All rights reserved.
//

#import "AXRTLTool.h"
#import "AXWebViewController.h"
@implementation AXRTLTool
+(NSString *)RTLLanguage:(NSString *)key{
    
    
    NSString *desiredLanguageCode = @"zh-Hans";
    BOOL RTL = [[NSUserDefaults standardUserDefaults] boolForKey:@"RTL"];
    if (RTL) {
        desiredLanguageCode = @"ug-CN";
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:desiredLanguageCode ofType:@"lproj"];
    NSBundle *languageBundle = [NSBundle bundleWithPath:path];
    NSString *localizedString = [languageBundle localizedStringForKey:key value:@"" table:nil];
    return localizedString;
}

@end
