package androidx.leanback.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* loaded from: classes.dex */
public abstract class C0 implements InterfaceC0539y {
    public static void cancelAnimationsRecursive(View view) {
        if (view == null || !view.hasTransientState()) {
            return;
        }
        view.animate().cancel();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; view.hasTransientState() && i2 < childCount; i2++) {
                cancelAnimationsRecursive(viewGroup.getChildAt(i2));
            }
        }
    }

    @Override // androidx.leanback.widget.InterfaceC0539y
    public final Object getFacet(Class<?> cls) {
        return null;
    }

    public abstract void onBindViewHolder(A0 a02, Object obj);

    public void onBindViewHolder(A0 a02, Object obj, List<Object> list) {
        onBindViewHolder(a02, obj);
    }

    public abstract A0 onCreateViewHolder(ViewGroup viewGroup);

    public abstract void onUnbindViewHolder(A0 a02);

    public void onViewAttachedToWindow(A0 a02) {
    }

    public void onViewDetachedFromWindow(A0 a02) {
        cancelAnimationsRecursive(a02.f6460a);
    }
}
