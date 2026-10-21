package n1;

import java.util.Set;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public final String[] f18839a;

    public r(String[] tables) {
        kotlin.jvm.internal.j.checkNotNullParameter(tables, "tables");
        this.f18839a = tables;
    }

    public final String[] getTables$room_runtime_release() {
        return this.f18839a;
    }

    public abstract boolean isRemote$room_runtime_release();

    public abstract void onInvalidated(Set<String> set);
}
