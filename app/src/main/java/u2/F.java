package u2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import l2.InterfaceC1222c;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class F implements H {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.load.data.q f20257a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1428b f20258b;

    /* renamed from: c, reason: collision with root package name */
    public final List f20259c;

    public F(List list, InputStream inputStream, InterfaceC1428b interfaceC1428b) {
        this.f20258b = (InterfaceC1428b) G2.r.checkNotNull(interfaceC1428b);
        this.f20259c = (List) G2.r.checkNotNull(list);
        this.f20257a = new com.bumptech.glide.load.data.q(inputStream, interfaceC1428b);
    }

    @Override // u2.H
    public Bitmap decodeBitmap(BitmapFactory.Options options) throws IOException {
        return BitmapFactory.decodeStream(this.f20257a.rewindAndGet(), null, options);
    }

    @Override // u2.H
    public int getImageOrientation() throws IOException {
        return l2.l.getOrientation((List<InterfaceC1222c>) this.f20259c, this.f20257a.rewindAndGet(), this.f20258b);
    }

    @Override // u2.H
    public ImageHeaderParser$ImageType getImageType() throws IOException {
        return l2.l.getType((List<InterfaceC1222c>) this.f20259c, this.f20257a.rewindAndGet(), this.f20258b);
    }

    @Override // u2.H
    public void stopGrowingBuffers() {
        this.f20257a.fixMarkLimits();
    }
}
