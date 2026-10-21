package r2;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import java.io.IOException;

/* renamed from: r2.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1589u implements InterfaceC1563W, InterfaceC1593y {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19807a;

    public C1589u(Context context) {
        this.f19807a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1594z(this.f19807a, this);
    }

    @Override // r2.InterfaceC1593y
    public Class<AssetFileDescriptor> getDataClass() {
        return AssetFileDescriptor.class;
    }

    @Override // r2.InterfaceC1593y
    public void close(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }

    @Override // r2.InterfaceC1593y
    public AssetFileDescriptor open(Resources.Theme theme, Resources resources, int i2) {
        return resources.openRawResourceFd(i2);
    }
}
