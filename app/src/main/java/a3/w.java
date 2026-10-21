package a3;

import android.content.Context;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class w implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4757a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f4758b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f4759c;

    public w(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3) {
        this.f4757a = interfaceC1657a;
        this.f4758b = interfaceC1657a2;
        this.f4759c = interfaceC1657a3;
    }

    public static w create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3) {
        return new w(interfaceC1657a, interfaceC1657a2, interfaceC1657a3);
    }

    public static v newInstance(Context context, String str, int i2) {
        return new v(context, str, i2);
    }

    @Override // t5.InterfaceC1657a
    public v get() {
        return newInstance((Context) this.f4757a.get(), (String) this.f4758b.get(), ((Integer) this.f4759c.get()).intValue());
    }
}
