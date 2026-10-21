package m4;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso$Priority;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public Uri f18610a;

    /* renamed from: b, reason: collision with root package name */
    public int f18611b;

    /* renamed from: c, reason: collision with root package name */
    public int f18612c;

    /* renamed from: d, reason: collision with root package name */
    public int f18613d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18614e;

    /* renamed from: f, reason: collision with root package name */
    public int f18615f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18616g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f18617h;

    /* renamed from: i, reason: collision with root package name */
    public Bitmap.Config f18618i;

    /* renamed from: j, reason: collision with root package name */
    public Picasso$Priority f18619j;

    public I build() {
        if (this.f18614e && this.f18612c == 0 && this.f18613d == 0) {
            throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
        }
        if (this.f18619j == null) {
            this.f18619j = Picasso$Priority.f13412e;
        }
        return new I(this.f18610a, this.f18611b, this.f18617h, this.f18612c, this.f18613d, this.f18614e, this.f18615f, this.f18616g, this.f18618i, this.f18619j);
    }

    public H centerCrop(int i2) {
        this.f18614e = true;
        this.f18615f = i2;
        return this;
    }

    public H onlyScaleDown() {
        if (this.f18613d == 0 && this.f18612c == 0) {
            throw new IllegalStateException("onlyScaleDown can not be applied without resize");
        }
        this.f18616g = true;
        return this;
    }

    public H resize(int i2, int i7) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Width must be positive number or 0.");
        }
        if (i7 < 0) {
            throw new IllegalArgumentException("Height must be positive number or 0.");
        }
        if (i7 == 0 && i2 == 0) {
            throw new IllegalArgumentException("At least one dimension has to be positive number.");
        }
        this.f18612c = i2;
        this.f18613d = i7;
        return this;
    }

    public H transform(S s6) {
        if (s6 == null) {
            throw new IllegalArgumentException("Transformation must not be null.");
        }
        if (((T4.d) s6).key() == null) {
            throw new IllegalArgumentException("Transformation key must not be null.");
        }
        if (this.f18617h == null) {
            this.f18617h = new ArrayList(2);
        }
        this.f18617h.add(s6);
        return this;
    }
}
