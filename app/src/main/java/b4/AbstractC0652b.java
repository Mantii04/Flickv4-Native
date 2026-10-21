package b4;

import android.content.Context;

/* renamed from: b4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0652b {

    /* renamed from: a, reason: collision with root package name */
    public static C0663m f8473a;

    public static void start(Context context, String str) {
        if (Thread.getDefaultUncaughtExceptionHandler() == null) {
            Thread.setDefaultUncaughtExceptionHandler(new C0651a());
        }
        if (f8473a == null) {
            f8473a = new C0663m(context, str);
        }
        f8473a.a(context, str);
    }

    public static void stop() {
        C0663m c0663m = f8473a;
        if (c0663m != null) {
            c0663m.a();
        }
    }
}
