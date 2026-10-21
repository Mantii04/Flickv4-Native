package i4;

import android.os.Build;
import android.view.View;
import h4.InterfaceC0986a;
import java.util.WeakHashMap;

/* renamed from: i4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1011b {

    /* renamed from: a, reason: collision with root package name */
    public static final WeakHashMap f16716a = new WeakHashMap(0);

    public static AbstractC1011b animate(View view) {
        WeakHashMap weakHashMap = f16716a;
        AbstractC1011b abstractC1011b = (AbstractC1011b) weakHashMap.get(view);
        if (abstractC1011b == null) {
            int intValue = Integer.valueOf(Build.VERSION.SDK).intValue();
            abstractC1011b = intValue >= 14 ? new i(view) : intValue >= 11 ? new C1016g(view) : new n(view);
            weakHashMap.put(view, abstractC1011b);
        }
        return abstractC1011b;
    }

    public abstract AbstractC1011b alpha(float f3);

    public abstract AbstractC1011b setDuration(long j7);

    public abstract AbstractC1011b setListener(InterfaceC0986a interfaceC0986a);

    public abstract AbstractC1011b translationX(float f3);
}
