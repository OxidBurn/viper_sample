// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to UserInfoModelObject.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface UserInfoModelObjectID : NSManagedObjectID {}
@end

@interface _UserInfoModelObject : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) UserInfoModelObjectID *objectID;

@property (nonatomic, strong, nullable) NSString* email;

@property (nonatomic, strong, nullable) NSString* fullName;

@property (nonatomic, strong, nullable) NSString* imagePath;

@property (nonatomic, strong, nullable) NSString* password;

@property (nonatomic, strong, nullable) NSNumber* userID;

@property (atomic) int16_t userIDValue;
- (int16_t)userIDValue;
- (void)setUserIDValue:(int16_t)value_;

@property (nonatomic, strong, nullable) NSString* username;

@end

@interface _UserInfoModelObject (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveEmail;
- (void)setPrimitiveEmail:(nullable NSString*)value;

- (nullable NSString*)primitiveFullName;
- (void)setPrimitiveFullName:(nullable NSString*)value;

- (nullable NSString*)primitiveImagePath;
- (void)setPrimitiveImagePath:(nullable NSString*)value;

- (nullable NSString*)primitivePassword;
- (void)setPrimitivePassword:(nullable NSString*)value;

- (nullable NSNumber*)primitiveUserID;
- (void)setPrimitiveUserID:(nullable NSNumber*)value;

- (int16_t)primitiveUserIDValue;
- (void)setPrimitiveUserIDValue:(int16_t)value_;

- (nullable NSString*)primitiveUsername;
- (void)setPrimitiveUsername:(nullable NSString*)value;

@end

@interface UserInfoModelObjectAttributes: NSObject 
+ (NSString *)email;
+ (NSString *)fullName;
+ (NSString *)imagePath;
+ (NSString *)password;
+ (NSString *)userID;
+ (NSString *)username;
@end

NS_ASSUME_NONNULL_END
