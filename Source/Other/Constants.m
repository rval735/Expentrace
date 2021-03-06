//
//  ViewController.m
//  Expentrace
//
//  Created by RHVT on 5/5/19.
//  Copyright © 2019 R. All rights reserved.
//

#import "Constants.h"

@interface Constants ()

@end

@implementation Constants

+(NSURL *)currencyLiveURL {
    NSString *baseURLString = @"https://api.exchangeratesapi.io/latest?base=USD";
    return [NSURL URLWithString:baseURLString];
}

+(NSString *)transactionsFile {
    return @"TransactionsRecord";
}

+(NSString *)encryptionPass {
    // This password should not be a simple constant
    // hardcoded here, next step would be to have
    // this stored on keychain
    return @"encryptionPass";
}

+(NSArray *)supportedCurrencies {
    return @[[self usdKey], [self nzdKey]];
}

+(NSString *)usdKey {
    return @"USD";
}

+(NSString *)ratesKey {
    return @"rates";
}

+(NSString *)nzdKey {
    return @"NZD";
}

@end
