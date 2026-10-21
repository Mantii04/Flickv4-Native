package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class d2 extends E1 {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f17882b;

    public d2(Context context, Resources resources) {
        super(resources);
        this.f17882b = new WeakReference(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i2) throws Resources.NotFoundException {
        B1 b12;
        Drawable a7 = a(i2);
        Context context = (Context) this.f17882b.get();
        if (a7 != null && context != null && (b12 = D1.get().f17673g) != null) {
            ((C1126H) b12).tintDrawableUsingColorFilter(context, i2, a7);
        }
        return a7;
    }
}
