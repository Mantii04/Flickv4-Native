package u5;

/* renamed from: u5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1702a {
    public static void addSuppressed(Throwable th, Throwable exception) {
        kotlin.jvm.internal.j.checkNotNullParameter(th, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(exception, "exception");
        if (th != exception) {
            C5.c.f805a.addSuppressed(th, exception);
        }
    }
}
