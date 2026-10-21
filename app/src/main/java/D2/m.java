package D2;

import G2.r;
import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: d, reason: collision with root package name */
    public static Integer f881d;

    /* renamed from: a, reason: collision with root package name */
    public final View f882a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f883b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public l f884c;

    public m(View view) {
        this.f882a = view;
    }

    public final int a(int i2, int i7, int i8) {
        int i9 = i7 - i8;
        if (i9 > 0) {
            return i9;
        }
        int i10 = i2 - i8;
        if (i10 > 0) {
            return i10;
        }
        View view = this.f882a;
        if (view.isLayoutRequested() || i7 != -2) {
            return 0;
        }
        if (Log.isLoggable("ViewTarget", 4)) {
            Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        Context context = view.getContext();
        if (f881d == null) {
            Display defaultDisplay = ((WindowManager) r.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f881d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f881d.intValue();
    }
}
