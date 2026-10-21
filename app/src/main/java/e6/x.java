package e6;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class x {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f14036a = Logger.getLogger("okio.Okio");

    public static final J appendingSink(File file) throws FileNotFoundException {
        kotlin.jvm.internal.j.checkNotNullParameter(file, "<this>");
        return w.sink(new FileOutputStream(file, true));
    }

    public static final boolean isAndroidGetsocknameError(AssertionError assertionError) {
        kotlin.jvm.internal.j.checkNotNullParameter(assertionError, "<this>");
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null) : false) {
                return true;
            }
        }
        return false;
    }

    public static final J sink(OutputStream outputStream) {
        kotlin.jvm.internal.j.checkNotNullParameter(outputStream, "<this>");
        return new B(outputStream, new O());
    }

    public static /* synthetic */ J sink$default(File file, boolean z6, int i2, Object obj) throws FileNotFoundException {
        if ((i2 & 1) != 0) {
            z6 = false;
        }
        return w.sink(file, z6);
    }

    public static final L source(InputStream inputStream) {
        kotlin.jvm.internal.j.checkNotNullParameter(inputStream, "<this>");
        return new v(inputStream, new O());
    }

    public static final J sink(Socket socket) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(socket, "<this>");
        K k7 = new K(socket);
        OutputStream outputStream = socket.getOutputStream();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(outputStream, "getOutputStream(...)");
        return k7.sink(new B(outputStream, k7));
    }

    public static final L source(Socket socket) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(socket, "<this>");
        K k7 = new K(socket);
        InputStream inputStream = socket.getInputStream();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
        return k7.source(new v(inputStream, k7));
    }

    public static final J sink(File file, boolean z6) throws FileNotFoundException {
        kotlin.jvm.internal.j.checkNotNullParameter(file, "<this>");
        return w.sink(new FileOutputStream(file, z6));
    }

    public static final L source(File file) throws FileNotFoundException {
        kotlin.jvm.internal.j.checkNotNullParameter(file, "<this>");
        return new v(new FileInputStream(file), O.NONE);
    }
}
