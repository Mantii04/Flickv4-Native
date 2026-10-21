package q1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* renamed from: q1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1511b implements f {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f19550a;

    public C1511b(g registry) {
        kotlin.jvm.internal.j.checkNotNullParameter(registry, "registry");
        this.f19550a = new LinkedHashSet();
        registry.registerSavedStateProvider("androidx.savedstate.Restarter", this);
    }

    public final void add(String className) {
        kotlin.jvm.internal.j.checkNotNullParameter(className, "className");
        this.f19550a.add(className);
    }

    @Override // q1.f
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f19550a));
        return bundle;
    }
}
