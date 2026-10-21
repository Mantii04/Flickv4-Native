package androidx.core.view;

import O5.d;
import O5.h;
import android.view.View;

/* loaded from: classes.dex */
public abstract class ViewKt {
    public static final d getAllViews(View view) {
        return h.sequence(new ViewKt$allViews$1(view, null));
    }
}
