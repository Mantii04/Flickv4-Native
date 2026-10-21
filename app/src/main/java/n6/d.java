package n6;

import android.util.AttributeSet;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: classes2.dex */
public final class d extends pl.droidsonroids.gif.e {

    /* renamed from: c, reason: collision with root package name */
    public final int f19015c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19016d;

    public d(GifImageView gifImageView, AttributeSet attributeSet) {
        super(gifImageView, attributeSet);
        this.f19015c = a(gifImageView, attributeSet, true);
        this.f19016d = a(gifImageView, attributeSet, false);
    }

    public static int a(GifImageView gifImageView, AttributeSet attributeSet, boolean z6) {
        int attributeResourceValue = attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", z6 ? "src" : "background", 0);
        if (attributeResourceValue > 0) {
            if (e.f19017a.contains(gifImageView.getResources().getResourceTypeName(attributeResourceValue)) && !e.a(gifImageView, z6, attributeResourceValue)) {
                return attributeResourceValue;
            }
        }
        return 0;
    }

    public d() {
        this.f19015c = 0;
        this.f19016d = 0;
    }
}
