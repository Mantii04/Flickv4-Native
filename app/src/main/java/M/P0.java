package M;

import L1.AbstractC0149g;
import android.os.Build;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class P0 extends WindowInsetsAnimation$Callback {

    /* renamed from: a, reason: collision with root package name */
    public final J0 f1958a;

    /* renamed from: b, reason: collision with root package name */
    public List f1959b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f1960c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f1961d;

    public P0(J0 j02) {
        super(j02.getDispatchMode());
        this.f1961d = new HashMap();
        this.f1958a = j02;
    }

    public final S0 a(WindowInsetsAnimation windowInsetsAnimation) {
        S0 s02 = (S0) this.f1961d.get(windowInsetsAnimation);
        if (s02 == null) {
            s02 = new S0(0, null, 0L);
            if (Build.VERSION.SDK_INT >= 30) {
                s02.f1970a = new Q0(windowInsetsAnimation);
            }
            this.f1961d.put(windowInsetsAnimation, s02);
        }
        return s02;
    }

    public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        this.f1958a.onEnd(a(windowInsetsAnimation));
        this.f1961d.remove(windowInsetsAnimation);
    }

    public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        this.f1958a.onPrepare(a(windowInsetsAnimation));
    }

    public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
        float fraction;
        ArrayList arrayList = this.f1960c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.f1960c = arrayList2;
            this.f1959b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation m7 = AbstractC0149g.m(list.get(size));
            S0 a7 = a(m7);
            fraction = m7.getFraction();
            a7.setFraction(fraction);
            this.f1960c.add(a7);
        }
        return this.f1958a.onProgress(h1.toWindowInsetsCompat(windowInsets), this.f1959b).toWindowInsets();
    }

    public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        return this.f1958a.onStart(a(windowInsetsAnimation), I0.toBoundsCompat(bounds)).toBounds();
    }
}
