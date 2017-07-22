//
//  NSMutableDictionary+IgnoreNil.h
//  BlackCloset
//
//  Created by Yoon Lee on 8/12/16.
//  Copyright © 2016 BrandBoom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (CaseInsesitive)

/** Get an actual key that matches in aKey by ignoring case */
- (NSString *)caseInsesitiveMatchKey:(NSString *)aKey;

/** Object by case insesitive key;used for property type parsing;search complexity from O(log(N))) to O(N)  */
- (id)objectForcaseInsensitiveKey:(NSString *)aKey;

@end

@interface NSMutableDictionary (IgnoreNil)

/** Insert into dictionary only if object is not nil. */
//- (void)setIgnoreNilObject:(id)anObject forKey:(id<NSCopying>)aKey;
- (void)setIgnoreNilObject:(id)anObject forKey:(id<NSCopying>)aKey;

/** Insert into dictionary even if object is nil;object is [NSNull null]. */
- (void)insertAnyObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end
