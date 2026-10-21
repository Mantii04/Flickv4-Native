package T1;

import android.content.Context;
import java.util.concurrent.Callable;

/* renamed from: T1.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0334m implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f3625b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3626e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f3627f;

    public CallableC0334m(Context context, String str, String str2) {
        this.f3625b = context;
        this.f3626e = str;
        this.f3627f = str2;
    }

    @Override // java.util.concurrent.Callable
    public L call() {
        return AbstractC0338q.fromAssetSync(this.f3625b, this.f3626e, this.f3627f);
    }
}
