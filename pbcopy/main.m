#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *textToCopy;

        if (argc > 1) {
            // Combine all arguments into a single string
            NSMutableArray *args = [NSMutableArray array];
            for (int i = 1; i < argc; i++) {
                [args addObject:[NSString stringWithUTF8String:argv[i]]];
            }
            textToCopy = [args componentsJoinedByString:@" "];
        } else {
            // Read from standard input
            NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
            NSData *inputData = [input readDataToEndOfFile];
            textToCopy = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
            textToCopy = [textToCopy stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        }

        if (textToCopy.length == 0) {
            fprintf(stderr, "No input provided.\n");
            return 1;
        }

        // Set the pasteboard content
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = textToCopy;

        // Verify if the content was set correctly
        if ([pasteboard.string isEqualToString:textToCopy]) {
            return 0;
        } else {
            fprintf(stderr, "Failed to copy text to pasteboard.\n");
            return 1;
        }
    }
}