package m0;

import H5.l;
import androidx.lifecycle.X;
import androidx.lifecycle.c0;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f18202a = new ArrayList();

    public final <T extends X> void addInitializer(N5.c clazz, l initializer) {
        j.checkNotNullParameter(clazz, "clazz");
        j.checkNotNullParameter(initializer, "initializer");
        this.f18202a.add(new g(G5.a.getJavaClass(clazz), initializer));
    }

    public final c0 build() {
        g[] gVarArr = (g[]) this.f18202a.toArray(new g[0]);
        return new d((g[]) Arrays.copyOf(gVarArr, gVarArr.length));
    }
}
