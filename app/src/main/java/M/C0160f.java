package M;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;

/* renamed from: M.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0160f {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0164h f2027a;

    public C0160f(ClipData clipData, int i2) {
        if (Build.VERSION.SDK_INT >= 31) {
            this.f2027a = new C0162g(clipData, i2);
            return;
        }
        C0166i c0166i = new C0166i();
        c0166i.f2031a = clipData;
        c0166i.f2032b = i2;
        this.f2027a = c0166i;
    }

    public C0174m build() {
        return this.f2027a.build();
    }

    public C0160f setExtras(Bundle bundle) {
        this.f2027a.setExtras(bundle);
        return this;
    }

    public C0160f setFlags(int i2) {
        this.f2027a.setFlags(i2);
        return this;
    }

    public C0160f setLinkUri(Uri uri) {
        this.f2027a.setLinkUri(uri);
        return this;
    }
}
