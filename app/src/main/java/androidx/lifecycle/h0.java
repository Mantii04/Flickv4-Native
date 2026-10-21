package androidx.lifecycle;

import m0.C1261a;

/* loaded from: classes.dex */
public abstract class h0 {
    public static final m0.c defaultCreationExtras(j0 owner) {
        kotlin.jvm.internal.j.checkNotNullParameter(owner, "owner");
        return owner instanceof InterfaceC0552j ? ((InterfaceC0552j) owner).getDefaultViewModelCreationExtras() : C1261a.f18199b;
    }
}
