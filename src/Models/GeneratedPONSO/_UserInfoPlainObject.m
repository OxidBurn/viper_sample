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

    [aCoder encodeObject:self.avatar forKey:@"avatar"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.fullName forKey:@"fullName"];
    [aCoder encodeObject:self.imagePath forKey:@"imagePath"];
    [aCoder encodeObject:self.imageURL forKey:@"imageURL"];
    [aCoder encodeObject:self.password forKey:@"password"];
    [aCoder encodeObject:self.userID forKey:@"userID"];
    [aCoder encodeObject:self.username forKey:@"username"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {

        _avatar = [[aDecoder decodeObjectForKey:@"avatar"] copy];
        _email = [[aDecoder decodeObjectForKey:@"email"] copy];
        _fullName = [[aDecoder decodeObjectForKey:@"fullName"] copy];
        _imagePath = [[aDecoder decodeObjectForKey:@"imagePath"] copy];
        _imageURL = [[aDecoder decodeObjectForKey:@"imageURL"] copy];
        _password = [[aDecoder decodeObjectForKey:@"password"] copy];
        _userID = [[aDecoder decodeObjectForKey:@"userID"] copy];
        _username = [[aDecoder decodeObjectForKey:@"username"] copy];
    }

    return self;
}

#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone {
    UserInfoPlainObject *replica = [[[self class] allocWithZone:zone] init];

    replica.avatar = self.avatar;
    replica.email = self.email;
    replica.fullName = self.fullName;
    replica.imagePath = self.imagePath;
    replica.imageURL = self.imageURL;
    replica.password = self.password;
    replica.userID = self.userID;
    replica.username = self.username;

    return replica;
}

@end
