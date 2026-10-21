package D5;

import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class b extends C5.b {
    @Override // C5.b
    public void addSuppressed(Throwable cause, Throwable exception) {
        j.checkNotNullParameter(cause, "cause");
        j.checkNotNullParameter(exception, "exception");
        Integer num = a.f922a;
        if (num == null || num.intValue() >= 19) {
            cause.addSuppressed(exception);
        } else {
            super.addSuppressed(cause, exception);
        }
    }
}
