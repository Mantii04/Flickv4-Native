package e6;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes2.dex */
public abstract class w {
    public static final J appendingSink(File file) throws FileNotFoundException {
        return x.appendingSink(file);
    }

    public static final J blackhole() {
        return y.blackhole();
    }

    public static final InterfaceC0871m buffer(J j7) {
        return y.buffer(j7);
    }

    public static final boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return x.isAndroidGetsocknameError(assertionError);
    }

    public static final J sink(File file, boolean z6) throws FileNotFoundException {
        return x.sink(file, z6);
    }

    public static final L source(File file) throws FileNotFoundException {
        return x.source(file);
    }

    public static final InterfaceC0872n buffer(L l7) {
        return y.buffer(l7);
    }

    public static final J sink(OutputStream outputStream) {
        return x.sink(outputStream);
    }

    public static final L source(InputStream inputStream) {
        return x.source(inputStream);
    }

    public static final J sink(Socket socket) throws IOException {
        return x.sink(socket);
    }

    public static final L source(Socket socket) throws IOException {
        return x.source(socket);
    }
}
