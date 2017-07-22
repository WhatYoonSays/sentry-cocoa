//
//  NSMutableDictionary+IgnoreNil.m
//  BlackCloset
//
//  Created by Yoon Lee on 8/12/16.
//  Copyright © 2016 BrandBoom. All rights reserved.
//

#import "NSMutableDictionary+IgnoreNil.h"

@implementation NSDictionary (CaseInsesitive)

- (NSString *)caseInsesitiveMatchKey:(NSString *)aKey {
    NSArray *allKeys = [self allKeys];
    for (int i = 0; i < allKeys.count; i ++) {
        NSString *actualKey = allKeys[i];
        if ([aKey caseInsensitiveCompare:actualKey] == NSOrderedSame) {
            return actualKey;
            break;
        }
    }
    
    return nil;
}

- (id)objectForcaseInsensitiveKey:(NSString *)aKey {
    NSString *actualKey = [self caseInsesitiveMatchKey:aKey];
    if (actualKey) {
        return [self objectForKey:actualKey];
    }
    
    return nil;
}

@end

@implementation NSMutableDictionary (IgnoreNil)

- (void)setIgnoreNilObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil) {
        return;
    }
    
    [self setObject:anObject forKey:aKey];
}

- (void)insertAnyObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil) {
        [self setObject:[NSNull null] forKey:aKey];
        return;
    }
    
    [self setObject:anObject forKey:aKey];
}

@end
