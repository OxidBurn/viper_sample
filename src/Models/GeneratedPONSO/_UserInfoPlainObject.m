//
//  _UserInfoPlainObject.m
//
// DO NOT EDIT. This file is machine-generated and constantly overwritten.
//

#import "_UserInfoPlainObject.h"
#import "UserInfoPlainObject.h"

@implementation _UserInfoPlainObject

#pragma mark - NSCoding

- (void)encodeWithCoder:(NSCoder *)aCoder {

    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.fullName forKey:@"fullName"];
    [aCoder encodeObject:self.imagePath forKey:@"imagePath"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {

        _email = [[aDecoder decodeObjectForKey:@"email"] copy];
        _fullName = [[aDecoder decodeObjectForKey:@"fullName"] copy];
        _imagePath = [[aDecoder decodeObjectForKey:@"imagePath"] copy];
    }

    return self;
}

#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone {
    UserInfoPlainObject *replica = [[[self class] allocWithZone:zone] init];

    replica.email = self.email;
    replica.fullName = self.fullName;
    replica.imagePath = self.imagePath;

    return replica;
}

@end
