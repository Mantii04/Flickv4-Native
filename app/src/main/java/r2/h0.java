package r2;

import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class h0 implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f19788a;

    public h0(Resources resources) {
        this.f19788a = resources;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new j0(this.f19788a, f0Var.build(Uri.class, InputStream.class));
    }
}
