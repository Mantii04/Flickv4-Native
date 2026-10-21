package androidx.leanback.widget;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes.dex */
public abstract class G0 {

    /* renamed from: a, reason: collision with root package name */
    public static SparseArray f6495a;

    public static void setClipToRoundedOutline(View view, boolean z6, int i2) {
        if (z6) {
            if (f6495a == null) {
                f6495a = new SparseArray();
            }
            ViewOutlineProvider viewOutlineProvider = (ViewOutlineProvider) f6495a.get(i2);
            ViewOutlineProvider viewOutlineProvider2 = viewOutlineProvider;
            if (viewOutlineProvider == null) {
                F0 f02 = new F0();
                f02.f6493a = i2;
                viewOutlineProvider2 = f02;
                if (f6495a.size() < 32) {
                    f6495a.put(i2, f02);
                    viewOutlineProvider2 = f02;
                }
            }
            view.setOutlineProvider(viewOutlineProvider2);
        } else {
            view.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        }
        view.setClipToOutline(z6);
    }
}
