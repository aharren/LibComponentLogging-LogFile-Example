//
// main.m
//


#import <Foundation/Foundation.h>
#import "lcl.h"


#undef  ql_component
#define ql_component lcl_cMainC1


int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // show the name of the log file
    printf("log messages are written to %s\n", [[LCLLogFile path] UTF8String]);
    
    // enable logging for all components up to level Debug
    lcl_configure_by_name("*", lcl_vTrace);
    
    //
    // logging with lcl_log macros:
    //
    
    // log
    lcl_log(lcl_cMain, lcl_vInfo, @"log message %d", 1);
    
    // do something
    printf("hello world\n");
    
    // log again
    lcl_log(lcl_cMain, lcl_vInfo, @"log message %d", 2);
    
    
    //
    // logging with qlog macros:
    //
    
    // log
    qlinfo(@"info message %d using qlog", 1);
    
    // simple trace log without message
    qltrace();
    
    // log again
    qlinfo(@"info message %d using qlog", 2);
    
    [pool release];
    return 0;
}

