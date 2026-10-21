package o5;

import android.os.Handler;
import java.util.List;
import s5.AbstractC1643b;

/* renamed from: o5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1469a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1473e f19141b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f19142e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f19143f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1472d f19144j;

    public /* synthetic */ RunnableC1469a(C1473e c1473e, String str, boolean z6, InterfaceC1472d interfaceC1472d) {
        this.f19141b = c1473e;
        this.f19142e = str;
        this.f19143f = z6;
        this.f19144j = interfaceC1472d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final String f3;
        C1473e c1473e = this.f19141b;
        List<String> cachedApiIps = c1473e.isCacheFresh() ? c1473e.getCachedApiIps() : c1473e.d();
        boolean isEmpty = cachedApiIps.isEmpty();
        Handler handler = c1473e.f19152d;
        String str = this.f19142e;
        boolean z6 = this.f19143f;
        final InterfaceC1472d interfaceC1472d = this.f19144j;
        if (!isEmpty && (f3 = c1473e.f(str, cachedApiIps, z6)) != null) {
            final int i2 = 1;
            handler.post(new Runnable() { // from class: o5.b
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            interfaceC1472d.onFailure(f3);
                            break;
                        default:
                            interfaceC1472d.onSuccess(f3);
                            break;
                    }
                }
            });
            return;
        }
        AbstractC1643b.w("SeedDiscovery", "All API IPs failed, forcing cache refresh...", new Object[0]);
        List d7 = c1473e.d();
        if (d7.isEmpty()) {
            final String str2 = "All API IPs failed and seed refresh returned no IPs";
            final int i7 = 0;
            handler.post(new Runnable() { // from class: o5.b
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i7) {
                        case 0:
                            interfaceC1472d.onFailure(str2);
                            break;
                        default:
                            interfaceC1472d.onSuccess(str2);
                            break;
                    }
                }
            });
            return;
        }
        final String f7 = c1473e.f(str, d7, z6);
        if (f7 != null) {
            final int i8 = 1;
            handler.post(new Runnable() { // from class: o5.b
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i8) {
                        case 0:
                            interfaceC1472d.onFailure(f7);
                            break;
                        default:
                            interfaceC1472d.onSuccess(f7);
                            break;
                    }
                }
            });
        } else {
            final String str3 = "All API IPs failed after seed refresh";
            final int i9 = 0;
            handler.post(new Runnable() { // from class: o5.b
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i9) {
                        case 0:
                            interfaceC1472d.onFailure(str3);
                            break;
                        default:
                            interfaceC1472d.onSuccess(str3);
                            break;
                    }
                }
            });
        }
    }
}
