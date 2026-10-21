package r2;

import android.content.Context;
import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: r2.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1591w implements InterfaceC1563W, InterfaceC1593y {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19811a;

    public C1591w(Context context) {
        this.f19811a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1594z(this.f19811a, this);
    }

    @Override // r2.InterfaceC1593y
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // r2.InterfaceC1593y
    public void close(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // r2.InterfaceC1593y
    public InputStream open(Resources.Theme theme, Resources resources, int i2) {
        return resources.openRawResource(i2);
    }
}
