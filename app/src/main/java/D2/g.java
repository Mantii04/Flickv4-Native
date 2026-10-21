package D2;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class g extends h {
    public g(ImageView imageView) {
        super(imageView);
    }

    @Override // D2.h
    public void setResource(Drawable drawable) {
        ((ImageView) this.f886b).setImageDrawable(drawable);
    }
}
