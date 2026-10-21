package androidx.sqlite.db.framework;

import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
final class FrameworkSQLiteOpenHelper$OpenHelper$CallbackException extends RuntimeException {

    /* renamed from: b, reason: collision with root package name */
    public final FrameworkSQLiteOpenHelper$OpenHelper$CallbackName f8145b;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f8146e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameworkSQLiteOpenHelper$OpenHelper$CallbackException(FrameworkSQLiteOpenHelper$OpenHelper$CallbackName callbackName, Throwable cause) {
        super(cause);
        j.checkNotNullParameter(callbackName, "callbackName");
        j.checkNotNullParameter(cause, "cause");
        this.f8145b = callbackName;
        this.f8146e = cause;
    }

    public final FrameworkSQLiteOpenHelper$OpenHelper$CallbackName getCallbackName() {
        return this.f8145b;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f8146e;
    }
}
