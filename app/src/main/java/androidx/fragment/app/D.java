package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle$Event;

/* loaded from: classes.dex */
public final /* synthetic */ class D implements q1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6099a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6100b;

    public /* synthetic */ D(Object obj, int i2) {
        this.f6099a = i2;
        this.f6100b = obj;
    }

    @Override // q1.f
    public final Bundle saveState() {
        switch (this.f6099a) {
            case 0:
                H h7 = (H) this.f6100b;
                h7.markFragmentsCreated();
                h7.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
                return new Bundle();
            default:
                return ((C0469j0) this.f6100b).K();
        }
    }
}
