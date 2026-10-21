package r2;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;

/* loaded from: classes.dex */
public final class g0 implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f19785a;

    public g0(Resources resources) {
        this.f19785a = resources;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new j0(this.f19785a, f0Var.build(Uri.class, AssetFileDescriptor.class));
    }
}
