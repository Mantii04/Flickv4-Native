package n2;

import java.io.File;
import l2.InterfaceC1220a;
import p2.InterfaceC1491b;

/* renamed from: n2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1403h implements InterfaceC1491b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1220a f18959a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18960b;

    /* renamed from: c, reason: collision with root package name */
    public final l2.q f18961c;

    public C1403h(InterfaceC1220a interfaceC1220a, Object obj, l2.q qVar) {
        this.f18959a = interfaceC1220a;
        this.f18960b = obj;
        this.f18961c = qVar;
    }

    public boolean write(File file) {
        return this.f18959a.encode(this.f18960b, file, this.f18961c);
    }
}
