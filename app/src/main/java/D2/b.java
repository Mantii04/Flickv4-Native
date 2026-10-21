package D2;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class b extends h {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Override // D2.h
    public void setResource(Bitmap bitmap) {
        ((ImageView) this.f886b).setImageBitmap(bitmap);
    }
}
