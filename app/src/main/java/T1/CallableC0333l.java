package T1;

import android.content.Context;
import c2.C0723b;
import java.util.concurrent.Callable;

/* renamed from: T1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0333l implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f3622b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3623e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f3624f;

    public CallableC0333l(Context context, String str, String str2) {
        this.f3622b = context;
        this.f3623e = str;
        this.f3624f = str2;
    }

    @Override // java.util.concurrent.Callable
    public L call() {
        return C0723b.fetchSync(this.f3622b, this.f3623e, this.f3624f);
    }
}
