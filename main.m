//
// main.m
//


#import <Foundation/Foundation.h>
#import "lcl.h"


int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // enable logging for all components up to level Debug
    lcl_configure_by_name("*", lcl_vDebug);
    
    // log
    lcl_log(lcl_cMain, lcl_vInfo, @"log message %d", 1);
    
    // do something
    printf("hello world\n");
    
    // log again
    lcl_log(lcl_cMain, lcl_vInfo, @"log message %d", 2);
    
    [pool release];
    return 0;
}

