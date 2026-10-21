package M;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* renamed from: M.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0155c0 implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public h1 f2016a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2017b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ L f2018c;

    public ViewOnApplyWindowInsetsListenerC0155c0(View view, L l7) {
        this.f2017b = view;
        this.f2018c = l7;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(windowInsets, view);
        int i2 = Build.VERSION.SDK_INT;
        L l7 = this.f2018c;
        if (i2 < 30) {
            AbstractC0157d0.a(windowInsets, this.f2017b);
            if (windowInsetsCompat.equals(this.f2016a)) {
                return l7.onApplyWindowInsets(view, windowInsetsCompat).toWindowInsets();
            }
        }
        this.f2016a = windowInsetsCompat;
        h1 onApplyWindowInsets = l7.onApplyWindowInsets(view, windowInsetsCompat);
        if (i2 >= 30) {
            return onApplyWindowInsets.toWindowInsets();
        }
        AbstractC0181p0.requestApplyInsets(view);
        return onApplyWindowInsets.toWindowInsets();
    }
}
