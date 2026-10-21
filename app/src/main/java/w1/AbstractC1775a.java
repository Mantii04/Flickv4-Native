package w1;

import android.annotation.SuppressLint;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: w1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1775a {

    /* renamed from: a, reason: collision with root package name */
    public static long f20669a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f20670b;

    public static void beginSection(String str) {
        AbstractC1776b.beginSection(str);
    }

    public static void endSection() {
        AbstractC1776b.endSection();
    }

    @SuppressLint({"NewApi"})
    public static boolean isEnabled() {
        boolean isEnabled;
        try {
            if (f20670b == null) {
                isEnabled = Trace.isEnabled();
                return isEnabled;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (f20670b == null) {
                f20669a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f20670b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f20670b.invoke(null, Long.valueOf(f20669a))).booleanValue();
        } catch (Exception e3) {
            if (!(e3 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e3);
                return false;
            }
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }
}
