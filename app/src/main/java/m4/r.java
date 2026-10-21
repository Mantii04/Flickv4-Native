package m4;

import com.squareup.picasso.Picasso$LoadedFrom;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class r extends C1332k {
    @Override // m4.C1332k, m4.L
    public boolean canHandleRequest(I i2) {
        return "file".equals(i2.f18620a.getScheme());
    }

    @Override // m4.C1332k, m4.L
    public K load(I i2, int i7) throws IOException {
        return new K(null, e6.w.source(this.f18684a.getContentResolver().openInputStream(i2.f18620a)), Picasso$LoadedFrom.DISK, new f0.g(i2.f18620a.getPath()).getAttributeInt("Orientation", 1));
    }
}
