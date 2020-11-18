//
//  main.m
//  TCCThisDick
//
//  Created by Eric Rabil on 11/17/20.
//

#import <Foundation/Foundation.h>
#import <TCC/TCC.h>
#import <stdint.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if (argc != 3) {
            printf("tcctd (tccServiceID) (bundle_path)\n");
            return 0;
        }
        
        CFStringRef tccService = CFStringCreateWithCString(kCFAllocatorSystemDefault, argv[1], kCFStringEncodingUTF8);
        CFStringRef appPath = CFStringCreateWithCString(kCFAllocatorSystemDefault, argv[2], kCFStringEncodingUTF8);
        
        TCCAccessSetForPath(tccService, appPath, 0x0);
        
        printf("ok\n");
    }
    return 0;
}
