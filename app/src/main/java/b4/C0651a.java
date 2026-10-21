package b4;

import java.lang.Thread;

/* renamed from: b4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0651a implements Thread.UncaughtExceptionHandler {
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        AbstractC0664n.a("IMSDK shielded a plugin crash: " + thread.getName(), th);
        th.printStackTrace();
    }
}
