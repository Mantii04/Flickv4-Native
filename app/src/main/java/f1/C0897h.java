package f1;

import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;

/* renamed from: f1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0897h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0903k f14230a;

    public C0897h(C0903k c0903k) {
        this.f14230a = c0903k;
    }

    public void onReleaseController(F f3) {
        C0903k c0903k = this.f14230a;
        if (f3 != c0903k.f14257t) {
            int i2 = C0903k.f14232F;
            return;
        }
        U c7 = c0903k.c();
        if (c0903k.e() != c7) {
            c0903k.j(c7, 2);
        }
    }

    public void onSelectFallbackRoute(int i2) {
        C0903k c0903k = this.f14230a;
        U c7 = c0903k.c();
        if (c0903k.e() != c7) {
            c0903k.j(c7, i2);
        }
    }

    public void onSelectRoute(String str, int i2) {
        U u6;
        C0903k c0903k = this.f14230a;
        Iterator it = c0903k.f14244g.iterator();
        while (true) {
            if (!it.hasNext()) {
                u6 = null;
                break;
            }
            u6 = (U) it.next();
            if (u6.getProviderInstance() == c0903k.f14242e && TextUtils.equals(str, u6.f14185b)) {
                break;
            }
        }
        if (u6 != null) {
            c0903k.j(u6, i2);
            return;
        }
        Log.w("GlobalMediaRouter", "onSelectRoute: The target RouteInfo is not found for descriptorId=" + str);
    }
}
