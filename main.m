
int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // do something
    printf("hello world\n");
    
    [pool release];
    return 0;
}

