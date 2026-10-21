package p2;

import java.io.File;

/* renamed from: p2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1496g implements InterfaceC1490a {

    /* renamed from: a, reason: collision with root package name */
    public final long f19453a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1495f f19454b;

    public AbstractC1496g(InterfaceC1495f interfaceC1495f, long j7) {
        this.f19453a = j7;
        this.f19454b = interfaceC1495f;
    }

    public InterfaceC1492c build() {
        File cacheDirectory = ((i) this.f19454b).getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        if (cacheDirectory.isDirectory() || cacheDirectory.mkdirs()) {
            return h.create(cacheDirectory, this.f19453a);
        }
        return null;
    }
}
