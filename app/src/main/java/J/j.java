package J;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class j implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1405b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f1406e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ i f1407f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f1408j;

    public j(String str, Context context, i iVar, int i2) {
        this.f1405b = str;
        this.f1406e = context;
        this.f1407f = iVar;
        this.f1408j = i2;
    }

    @Override // java.util.concurrent.Callable
    public n call() {
        return o.a(this.f1405b, this.f1406e, this.f1407f, this.f1408j);
    }
}
