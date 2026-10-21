package z2;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import l2.q;
import n2.InterfaceC1391M;
import v2.C1760c;

/* renamed from: z2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1984a implements InterfaceC1988e {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap.CompressFormat f21405a;

    /* renamed from: b, reason: collision with root package name */
    public final int f21406b;

    public C1984a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    @Override // z2.InterfaceC1988e
    public InterfaceC1391M transcode(InterfaceC1391M interfaceC1391M, q qVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) interfaceC1391M.get()).compress(this.f21405a, this.f21406b, byteArrayOutputStream);
        interfaceC1391M.recycle();
        return new C1760c(byteArrayOutputStream.toByteArray());
    }

    public C1984a(Bitmap.CompressFormat compressFormat, int i2) {
        this.f21405a = compressFormat;
        this.f21406b = i2;
    }
}
