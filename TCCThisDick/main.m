//
//  main.m
//  TCCThisDick
//
//  Created by Eric Rabil on 11/17/20.
//

#import <Foundation/Foundation.h>
#import <TCC/TCC.h>
#import <stdint.h>

#define sign_extend_64(val, width)  (((int64_t)(val) << (64 - (width)) >> (64 - (width))))

__attribute__ ((hot))
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if (argc != 4) {
            printf("tcctd (tccServiceID) (bundle_path)\n");
            return 0;
        }
        
        CFStringRef tccService = CFStringCreateWithCString(kCFAllocatorSystemDefault, argv[1], kCFStringEncodingUTF8);
        CFStringRef appPath = CFStringCreateWithCString(kCFAllocatorSystemDefault, argv[2], kCFStringEncodingUTF8);
        
        TCCAccessSetForPath(tccService, appPath, 0x0);
    }
    return 0;
}
