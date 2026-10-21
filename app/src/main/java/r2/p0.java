package r2;

import android.net.Uri;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class p0 implements InterfaceC1563W {
    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new r0(f0Var.build(Uri.class, ParcelFileDescriptor.class));
    }
}
