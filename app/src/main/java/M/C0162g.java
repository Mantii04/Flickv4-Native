package M;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* renamed from: M.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0162g implements InterfaceC0164h {

    /* renamed from: a, reason: collision with root package name */
    public final ContentInfo.Builder f2028a;

    public C0162g(ClipData clipData, int i2) {
        this.f2028a = C3.j.h(clipData, i2);
    }

    @Override // M.InterfaceC0164h
    public C0174m build() {
        ContentInfo build;
        build = this.f2028a.build();
        return new C0174m(new C0168j(build));
    }

    @Override // M.InterfaceC0164h
    public void setExtras(Bundle bundle) {
        this.f2028a.setExtras(bundle);
    }

    @Override // M.InterfaceC0164h
    public void setFlags(int i2) {
        this.f2028a.setFlags(i2);
    }

    @Override // M.InterfaceC0164h
    public void setLinkUri(Uri uri) {
        this.f2028a.setLinkUri(uri);
    }
}
