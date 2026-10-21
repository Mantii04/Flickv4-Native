package m4;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso$LoadedFrom;

/* loaded from: classes2.dex */
public final class K {

    /* renamed from: a, reason: collision with root package name */
    public final Picasso$LoadedFrom f18636a;

    /* renamed from: b, reason: collision with root package name */
    public final Bitmap f18637b;

    /* renamed from: c, reason: collision with root package name */
    public final e6.L f18638c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18639d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public K(Bitmap bitmap, Picasso$LoadedFrom picasso$LoadedFrom) {
        this(bitmap, null, picasso$LoadedFrom, 0);
        StringBuilder sb = W.f18670a;
        if (bitmap == null) {
            throw new NullPointerException("bitmap == null");
        }
    }

    public Bitmap getBitmap() {
        return this.f18637b;
    }

    public Picasso$LoadedFrom getLoadedFrom() {
        return this.f18636a;
    }

    public e6.L getSource() {
        return this.f18638c;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public K(e6.L l7, Picasso$LoadedFrom picasso$LoadedFrom) {
        this(null, l7, picasso$LoadedFrom, 0);
        StringBuilder sb = W.f18670a;
        if (l7 == null) {
            throw new NullPointerException("source == null");
        }
    }

    public K(Bitmap bitmap, e6.L l7, Picasso$LoadedFrom picasso$LoadedFrom, int i2) {
        if ((bitmap != null) != (l7 != null)) {
            this.f18637b = bitmap;
            this.f18638c = l7;
            StringBuilder sb = W.f18670a;
            if (picasso$LoadedFrom != null) {
                this.f18636a = picasso$LoadedFrom;
                this.f18639d = i2;
                return;
            }
            throw new NullPointerException("loadedFrom == null");
        }
        throw new AssertionError();
    }
}
