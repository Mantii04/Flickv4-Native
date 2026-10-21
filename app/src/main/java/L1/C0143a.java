package L1;

import android.app.Application;

/* renamed from: L1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0143a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0143a f1859a = new C0143a();

    public final String getProcessName() {
        String processName = Application.getProcessName();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(processName, "getProcessName()");
        return processName;
    }
}
