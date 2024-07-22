#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

const char *getPasteboardContent() {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    NSString *content = pasteboard.string;
    return [content UTF8String];
}

int main(int argc, char *argv[], char *envp[]) {
    @autoreleasepool {
        const char *pasteboardContent = getPasteboardContent();
        if (pasteboardContent == NULL) {
            fprintf(stderr, "Failed to get pasteboard content\n");
            return 1;
        }

        printf("%s\n", pasteboardContent);
        return 0;
    }
}
