package m4;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso$LoadedFrom;

/* renamed from: m4.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1339s {

    /* renamed from: a, reason: collision with root package name */
    public final D f18703a;

    /* renamed from: b, reason: collision with root package name */
    public final I f18704b;

    /* renamed from: c, reason: collision with root package name */
    public final C1322a f18705c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18706d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18707e;

    /* renamed from: f, reason: collision with root package name */
    public final C1339s f18708f = this;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18709g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18710h;

    /* renamed from: i, reason: collision with root package name */
    public InterfaceC1330i f18711i;

    public C1339s(D d7, ImageView imageView, I i2, int i7, String str, InterfaceC1330i interfaceC1330i) {
        this.f18703a = d7;
        this.f18704b = i2;
        this.f18705c = new C1322a(this, imageView, d7.f18602i);
        this.f18706d = i7;
        this.f18707e = str;
        this.f18711i = interfaceC1330i;
    }

    public final Object a() {
        C1322a c1322a = this.f18705c;
        if (c1322a == null) {
            return null;
        }
        return c1322a.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void complete(Bitmap bitmap, Picasso$LoadedFrom picasso$LoadedFrom) {
        if (bitmap == null) {
            throw new AssertionError("Attempted to complete action with no result!\n" + this);
        }
        ImageView imageView = (ImageView) this.f18705c.get();
        if (imageView == null) {
            return;
        }
        D d7 = this.f18703a;
        int i2 = E.f18604e;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new E(d7.f18596c, bitmap, drawable, picasso$LoadedFrom));
        InterfaceC1330i interfaceC1330i = this.f18711i;
        if (interfaceC1330i != null) {
            interfaceC1330i.onSuccess();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void error(Exception exc) {
        ImageView imageView = (ImageView) this.f18705c.get();
        if (imageView == null) {
            return;
        }
        Object drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        int i2 = this.f18706d;
        if (i2 != 0) {
            imageView.setImageResource(i2);
        }
        InterfaceC1330i interfaceC1330i = this.f18711i;
        if (interfaceC1330i != null) {
            interfaceC1330i.onError(exc);
        }
    }
}
