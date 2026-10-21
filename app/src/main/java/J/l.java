package J;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class l implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1410b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f1411e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ i f1412f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f1413j;

    public l(String str, Context context, i iVar, int i2) {
        this.f1410b = str;
        this.f1411e = context;
        this.f1412f = iVar;
        this.f1413j = i2;
    }

    @Override // java.util.concurrent.Callable
    public n call() {
        try {
            return o.a(this.f1410b, this.f1411e, this.f1412f, this.f1413j);
        } catch (Throwable unused) {
            return new n(-3);
        }
    }
}
