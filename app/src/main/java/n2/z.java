package n2;

import p2.AbstractC1496g;
import p2.C1493d;
import p2.InterfaceC1490a;
import p2.InterfaceC1492c;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1490a f19006a;

    /* renamed from: b, reason: collision with root package name */
    public volatile InterfaceC1492c f19007b;

    public z(InterfaceC1490a interfaceC1490a) {
        this.f19006a = interfaceC1490a;
    }

    public InterfaceC1492c getDiskCache() {
        if (this.f19007b == null) {
            synchronized (this) {
                try {
                    if (this.f19007b == null) {
                        this.f19007b = ((AbstractC1496g) this.f19006a).build();
                    }
                    if (this.f19007b == null) {
                        this.f19007b = new C1493d();
                    }
                } finally {
                }
            }
        }
        return this.f19007b;
    }
}
