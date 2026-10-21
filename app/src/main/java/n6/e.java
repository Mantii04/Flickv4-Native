package n6;

import android.content.res.Resources;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final List f19017a = Arrays.asList("raw", "drawable", "mipmap");

    public static boolean a(GifImageView gifImageView, boolean z6, int i2) {
        Resources resources = gifImageView.getResources();
        if (resources == null) {
            return false;
        }
        try {
            if (!f19017a.contains(resources.getResourceTypeName(i2))) {
                return false;
            }
            pl.droidsonroids.gif.c cVar = new pl.droidsonroids.gif.c(resources, i2);
            if (z6) {
                gifImageView.setImageDrawable(cVar);
                return true;
            }
            gifImageView.setBackground(cVar);
            return true;
        } catch (Resources.NotFoundException | IOException unused) {
            return false;
        }
    }
}
