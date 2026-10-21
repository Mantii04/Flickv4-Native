package r2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.io.IOException;

/* renamed from: r2.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1590v implements InterfaceC1563W, InterfaceC1593y {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19809a;

    public C1590v(Context context) {
        this.f19809a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1594z(this.f19809a, this);
    }

    @Override // r2.InterfaceC1593y
    public Class<Drawable> getDataClass() {
        return Drawable.class;
    }

    @Override // r2.InterfaceC1593y
    public void close(Drawable drawable) throws IOException {
    }

    @Override // r2.InterfaceC1593y
    public Drawable open(Resources.Theme theme, Resources resources, int i2) {
        return w2.e.getDrawable(this.f19809a, i2, theme);
    }
}
