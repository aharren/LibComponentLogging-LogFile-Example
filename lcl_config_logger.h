
// Use LCLLogFile as the logging backend.
#import "LCLLogFile.h"

// Tell LCLLogFile the path of the log file as an NSString.
#define _LCLLogFile_LogFilePath                                                \
    [NSHomeDirectory() stringByAppendingPathComponent:                         \
        @"Library/Logs/ExampleApp/ExampleApp.log"]

// Tell LCLLogFile whether it should append to an existing log file on startup,
// instead of creating a new log file.
#define _LCLLogFile_AppendToExistingLogFile                                    \
    YES

// Tell LCLLogFile the maximum size of a log file in bytes.
#define _LCLLogFile_MaxLogFileSizeInBytes                                      \
    2 * 1024 * 1024

// Tell LCLLogFile whether it should mirror the log messages to stderr
#define _LCLLogFile_MirrorMessagesToStdErr                                     \
    NO
