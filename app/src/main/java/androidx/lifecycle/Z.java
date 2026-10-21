package androidx.lifecycle;

import android.app.Application;

/* loaded from: classes.dex */
public final class Z {
    public Z(kotlin.jvm.internal.g gVar) {
    }

    public final a0 getInstance(Application application) {
        a0 a0Var;
        a0 a0Var2;
        kotlin.jvm.internal.j.checkNotNullParameter(application, "application");
        a0Var = a0.f7023f;
        if (a0Var == null) {
            a0.f7023f = new a0(application);
        }
        a0Var2 = a0.f7023f;
        kotlin.jvm.internal.j.checkNotNull(a0Var2);
        return a0Var2;
    }
}
