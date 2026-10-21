package v0;

import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: v0.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1738w {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1737v f20552a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f20553b = new AtomicBoolean(false);

    public C1738w(InterfaceC1737v interfaceC1737v) {
        this.f20552a = interfaceC1737v;
    }

    public C getExtractor(Object... objArr) {
        Constructor<? extends C> constructor;
        synchronized (this.f20553b) {
            if (!this.f20553b.get()) {
                try {
                    constructor = this.f20552a.getConstructor();
                } catch (ClassNotFoundException unused) {
                    this.f20553b.set(true);
                } catch (Exception e3) {
                    throw new RuntimeException("Error instantiating extension", e3);
                }
            }
            constructor = null;
        }
        if (constructor == null) {
            return null;
        }
        try {
            return constructor.newInstance(objArr);
        } catch (Exception e7) {
            throw new IllegalStateException("Unexpected error creating extractor", e7);
        }
    }
}
