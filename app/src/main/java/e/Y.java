package e;

import android.os.Bundle;
import android.view.View;
import j.C1023f;
import k.C1080l;
import k.C1084p;

/* loaded from: classes.dex */
public final class Y {

    /* renamed from: a, reason: collision with root package name */
    public int f13669a;

    /* renamed from: b, reason: collision with root package name */
    public int f13670b;

    /* renamed from: c, reason: collision with root package name */
    public int f13671c;

    /* renamed from: d, reason: collision with root package name */
    public int f13672d;

    /* renamed from: e, reason: collision with root package name */
    public X f13673e;

    /* renamed from: f, reason: collision with root package name */
    public View f13674f;

    /* renamed from: g, reason: collision with root package name */
    public View f13675g;

    /* renamed from: h, reason: collision with root package name */
    public C1084p f13676h;

    /* renamed from: i, reason: collision with root package name */
    public C1080l f13677i;

    /* renamed from: j, reason: collision with root package name */
    public C1023f f13678j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f13679k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f13680l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f13681m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13682n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f13683o;

    /* renamed from: p, reason: collision with root package name */
    public Bundle f13684p;

    public boolean hasPanelItems() {
        if (this.f13674f == null) {
            return false;
        }
        return this.f13675g != null || this.f13677i.getAdapter().getCount() > 0;
    }
}
