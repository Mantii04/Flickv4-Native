package m0;

import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class f extends c {
    /* JADX WARN: Multi-variable type inference failed */
    public f() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // m0.c
    public <T> T get(b key) {
        j.checkNotNullParameter(key, "key");
        return (T) getMap$lifecycle_viewmodel_release().get(key);
    }

    public final <T> void set(b key, T t6) {
        j.checkNotNullParameter(key, "key");
        getMap$lifecycle_viewmodel_release().put(key, t6);
    }

    public f(c initialExtras) {
        j.checkNotNullParameter(initialExtras, "initialExtras");
        getMap$lifecycle_viewmodel_release().putAll(initialExtras.getMap$lifecycle_viewmodel_release());
    }

    public /* synthetic */ f(c cVar, int i2, kotlin.jvm.internal.g gVar) {
        this((i2 & 1) != 0 ? C1261a.f18199b : cVar);
    }
}
