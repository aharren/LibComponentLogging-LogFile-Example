
#define _lcl_logger(log_component, log_level, log_format, ...) {               \
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];                \
    NSLog(@"%s %s:%@:%d " log_format,                                          \
          _lcl_level_header_1[log_level],                                      \
          _lcl_component_header[log_component],                                \
          [@__FILE__ lastPathComponent],                                       \
          __LINE__,                                                            \
          ## __VA_ARGS__);                                                     \
    [pool release];                                                            \
}

