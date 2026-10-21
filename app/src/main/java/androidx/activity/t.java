package androidx.activity;

import android.window.OnBackInvokedCallback;
import e.a0;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements OnBackInvokedCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4924a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4925b;

    public /* synthetic */ t(Object obj, int i2) {
        this.f4924a = i2;
        this.f4925b = obj;
    }

    public final void onBackInvoked() {
        switch (this.f4924a) {
            case 0:
                H5.a onBackInvoked = (H5.a) this.f4925b;
                kotlin.jvm.internal.j.checkNotNullParameter(onBackInvoked, "$onBackInvoked");
                onBackInvoked.invoke();
                break;
            case 1:
                ((a0) this.f4925b).r();
                break;
            case 2:
                ((Runnable) this.f4925b).run();
                break;
            default:
                ((z3.b) this.f4925b).handleBackInvoked();
                break;
        }
    }
}
