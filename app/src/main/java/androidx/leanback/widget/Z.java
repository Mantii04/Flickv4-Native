package androidx.leanback.widget;

import java.util.List;

/* loaded from: classes.dex */
public abstract class Z {
    public abstract void onAddPresenter(C0 c02, int i2);

    public abstract void onAttachedToWindow(C0492b0 c0492b0);

    public abstract void onBind(C0492b0 c0492b0);

    public void onBind(C0492b0 c0492b0, List list) {
        onBind(c0492b0);
    }

    public abstract void onCreate(C0492b0 c0492b0);

    public abstract void onDetachedFromWindow(C0492b0 c0492b0);

    public abstract void onUnbind(C0492b0 c0492b0);
}
