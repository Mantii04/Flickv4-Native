package u2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.util.List;
import l2.InterfaceC1222c;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class G implements H {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1428b f20260a;

    /* renamed from: b, reason: collision with root package name */
    public final List f20261b;

    /* renamed from: c, reason: collision with root package name */
    public final com.bumptech.glide.load.data.t f20262c;

    public G(ParcelFileDescriptor parcelFileDescriptor, List list, InterfaceC1428b interfaceC1428b) {
        this.f20260a = (InterfaceC1428b) G2.r.checkNotNull(interfaceC1428b);
        this.f20261b = (List) G2.r.checkNotNull(list);
        this.f20262c = new com.bumptech.glide.load.data.t(parcelFileDescriptor);
    }

    @Override // u2.H
    public Bitmap decodeBitmap(BitmapFactory.Options options) throws IOException {
        return BitmapFactory.decodeFileDescriptor(this.f20262c.rewindAndGet().getFileDescriptor(), null, options);
    }

    @Override // u2.H
    public int getImageOrientation() throws IOException {
        return l2.l.getOrientation((List<InterfaceC1222c>) this.f20261b, this.f20262c, this.f20260a);
    }

    @Override // u2.H
    public ImageHeaderParser$ImageType getImageType() throws IOException {
        return l2.l.getType((List<InterfaceC1222c>) this.f20261b, this.f20262c, this.f20260a);
    }

    @Override // u2.H
    public void stopGrowingBuffers() {
    }
}
