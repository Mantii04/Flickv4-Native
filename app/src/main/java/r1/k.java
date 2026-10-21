package r1;

import android.content.Context;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: f, reason: collision with root package name */
    public static final j f19720f = new j(null);

    /* renamed from: a, reason: collision with root package name */
    public final Context f19721a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19722b;

    /* renamed from: c, reason: collision with root package name */
    public final h f19723c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19724d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f19725e;

    public k(Context context, String str, h callback, boolean z6, boolean z7) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        this.f19721a = context;
        this.f19722b = str;
        this.f19723c = callback;
        this.f19724d = z6;
        this.f19725e = z7;
    }

    public static final i builder(Context context) {
        return f19720f.builder(context);
    }
}
