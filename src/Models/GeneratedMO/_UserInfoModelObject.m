// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to UserInfoModelObject.m instead.

#import "_UserInfoModelObject.h"

@implementation UserInfoModelObjectID
@end

@implementation _UserInfoModelObject

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"UserInfo" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"UserInfo";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"UserInfo" inManagedObjectContext:moc_];
}

- (UserInfoModelObjectID*)objectID {
	return (UserInfoModelObjectID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic email;

@dynamic fullName;

@dynamic imagePath;

@end

@implementation UserInfoModelObjectAttributes 
+ (NSString *)email {
	return @"email";
}
+ (NSString *)fullName {
	return @"fullName";
}
+ (NSString *)imagePath {
	return @"imagePath";
}
@end

