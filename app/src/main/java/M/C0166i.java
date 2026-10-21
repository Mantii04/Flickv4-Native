package M;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;

/* renamed from: M.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0166i implements InterfaceC0164h {

    /* renamed from: a, reason: collision with root package name */
    public ClipData f2031a;

    /* renamed from: b, reason: collision with root package name */
    public int f2032b;

    /* renamed from: c, reason: collision with root package name */
    public int f2033c;

    /* renamed from: d, reason: collision with root package name */
    public Uri f2034d;

    /* renamed from: e, reason: collision with root package name */
    public Bundle f2035e;

    @Override // M.InterfaceC0164h
    public C0174m build() {
        return new C0174m(new C0172l(this));
    }

    @Override // M.InterfaceC0164h
    public void setExtras(Bundle bundle) {
        this.f2035e = bundle;
    }

    @Override // M.InterfaceC0164h
    public void setFlags(int i2) {
        this.f2033c = i2;
    }

    @Override // M.InterfaceC0164h
    public void setLinkUri(Uri uri) {
        this.f2034d = uri;
    }
}
