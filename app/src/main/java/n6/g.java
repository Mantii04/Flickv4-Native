package n6;

import java.lang.Thread;

/* loaded from: classes2.dex */
public abstract class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final pl.droidsonroids.gif.c f19019b;

    public g(pl.droidsonroids.gif.c cVar) {
        this.f19019b = cVar;
    }

    public abstract void doWork();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f19019b.isRecycled()) {
                return;
            }
            doWork();
        } catch (Throwable th) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
            throw th;
        }
    }
}
