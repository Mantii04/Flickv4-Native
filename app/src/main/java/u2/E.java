package u2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import l2.InterfaceC1222c;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class E implements H {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f20254a;

    /* renamed from: b, reason: collision with root package name */
    public final List f20255b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1428b f20256c;

    public E(List list, ByteBuffer byteBuffer, InterfaceC1428b interfaceC1428b) {
        this.f20254a = byteBuffer;
        this.f20255b = list;
        this.f20256c = interfaceC1428b;
    }

    @Override // u2.H
    public Bitmap decodeBitmap(BitmapFactory.Options options) {
        return BitmapFactory.decodeStream(G2.c.toStream(G2.c.rewind(this.f20254a)), null, options);
    }

    @Override // u2.H
    public int getImageOrientation() throws IOException {
        return l2.l.getOrientation((List<InterfaceC1222c>) this.f20255b, G2.c.rewind(this.f20254a), this.f20256c);
    }

    @Override // u2.H
    public ImageHeaderParser$ImageType getImageType() throws IOException {
        return l2.l.getType(this.f20255b, G2.c.rewind(this.f20254a));
    }

    @Override // u2.H
    public void stopGrowingBuffers() {
    }
}
