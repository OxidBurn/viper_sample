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
    [aCoder encodeObject:self.password forKey:@"password"];
    [aCoder encodeObject:self.userID forKey:@"userID"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {

        _email = [[aDecoder decodeObjectForKey:@"email"] copy];
        _fullName = [[aDecoder decodeObjectForKey:@"fullName"] copy];
        _imagePath = [[aDecoder decodeObjectForKey:@"imagePath"] copy];
        _password = [[aDecoder decodeObjectForKey:@"password"] copy];
        _userID = [[aDecoder decodeObjectForKey:@"userID"] copy];
    }

    return self;
}

#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone {
    UserInfoPlainObject *replica = [[[self class] allocWithZone:zone] init];

    replica.email = self.email;
    replica.fullName = self.fullName;
    replica.imagePath = self.imagePath;
    replica.password = self.password;
    replica.userID = self.userID;

    return replica;
}

@end
