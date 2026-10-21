package androidx.fragment.app;

import android.util.Log;

/* renamed from: androidx.fragment.app.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0455c0 implements androidx.activity.result.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0469j0 f6191a;

    public C0455c0(C0469j0 c0469j0) {
        this.f6191a = c0469j0;
    }

    @Override // androidx.activity.result.c
    public void onActivityResult(androidx.activity.result.b bVar) {
        C0469j0 c0469j0 = this.f6191a;
        C0461f0 c0461f0 = (C0461f0) c0469j0.f6211C.pollFirst();
        if (c0461f0 == null) {
            Log.w("FragmentManager", "No IntentSenders were started for " + this);
            return;
        }
        String str = c0461f0.f6197b;
        C c7 = c0469j0.f6224c.c(str);
        if (c7 == null) {
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        } else {
            c7.onActivityResult(c0461f0.f6198e, bVar.getResultCode(), bVar.getData());
        }
    }
}
