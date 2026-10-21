package androidx.fragment.app;

import android.util.Log;

/* renamed from: androidx.fragment.app.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0453b0 implements androidx.activity.result.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0469j0 f6176a;

    public C0453b0(C0469j0 c0469j0) {
        this.f6176a = c0469j0;
    }

    @Override // androidx.activity.result.c
    public void onActivityResult(androidx.activity.result.b bVar) {
        C0469j0 c0469j0 = this.f6176a;
        C0461f0 c0461f0 = (C0461f0) c0469j0.f6211C.pollFirst();
        if (c0461f0 == null) {
            Log.w("FragmentManager", "No Activities were started for result for " + this);
            return;
        }
        String str = c0461f0.f6197b;
        C c7 = c0469j0.f6224c.c(str);
        if (c7 == null) {
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        } else {
            c7.onActivityResult(c0461f0.f6198e, bVar.getResultCode(), bVar.getData());
        }
    }
}
