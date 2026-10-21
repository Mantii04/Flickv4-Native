package z3;

import android.os.Build;
import android.view.View;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final c f21425a;

    /* renamed from: b, reason: collision with root package name */
    public final b f21426b;

    /* renamed from: c, reason: collision with root package name */
    public final View f21427c;

    public <T extends View & b> f(T t6) {
        this(t6, t6);
    }

    public boolean shouldListenForBackCallbacks() {
        return this.f21425a != null;
    }

    public void startListeningForBackCallbacksWithPriorityOverlay() {
        c cVar = this.f21425a;
        if (cVar != null) {
            cVar.startListeningForBackCallbacks(this.f21426b, this.f21427c, true);
        }
    }

    public void stopListeningForBackCallbacks() {
        c cVar = this.f21425a;
        if (cVar != null) {
            cVar.stopListeningForBackCallbacks(this.f21427c);
        }
    }

    public f(b bVar, View view) {
        int i2 = Build.VERSION.SDK_INT;
        this.f21425a = i2 >= 34 ? new e() : i2 >= 33 ? new c() : null;
        this.f21426b = bVar;
        this.f21427c = view;
    }
}
