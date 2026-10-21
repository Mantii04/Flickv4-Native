package cz.msebera.android.httpclient.client.utils;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes2.dex */
public class JdkIdn implements Idn {
    private final Method toUnicode;

    public JdkIdn() throws ClassNotFoundException {
        try {
            this.toUnicode = Class.forName("java.net.IDN").getMethod("toUnicode", String.class);
        } catch (NoSuchMethodException e3) {
            throw new IllegalStateException(e3.getMessage(), e3);
        } catch (SecurityException e7) {
            throw new IllegalStateException(e7.getMessage(), e7);
        }
    }

    @Override // cz.msebera.android.httpclient.client.utils.Idn
    public String toUnicode(String str) {
        try {
            return (String) this.toUnicode.invoke(null, str);
        } catch (IllegalAccessException e3) {
            throw new IllegalStateException(e3.getMessage(), e3);
        } catch (InvocationTargetException e7) {
            Throwable cause = e7.getCause();
            throw new RuntimeException(cause.getMessage(), cause);
        }
    }
}
