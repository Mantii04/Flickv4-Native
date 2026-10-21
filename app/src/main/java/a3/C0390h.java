package a3;

import android.content.Context;
import t5.InterfaceC1657a;

/* renamed from: a3.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0390h implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4730a;

    public C0390h(InterfaceC1657a interfaceC1657a) {
        this.f4730a = interfaceC1657a;
    }

    public static C0390h create(InterfaceC1657a interfaceC1657a) {
        return new C0390h(interfaceC1657a);
    }

    public static String packageName(Context context) {
        return (String) U2.d.checkNotNull(context.getPackageName(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // t5.InterfaceC1657a
    public String get() {
        return packageName((Context) this.f4730a.get());
    }
}
