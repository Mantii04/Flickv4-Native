package androidx.fragment.app;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public static final M f6141a = new M();

    public final WindowInsets onApplyWindowInsets(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, View v6, WindowInsets insets) {
        kotlin.jvm.internal.j.checkNotNullParameter(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
        kotlin.jvm.internal.j.checkNotNullParameter(v6, "v");
        kotlin.jvm.internal.j.checkNotNullParameter(insets, "insets");
        WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(v6, insets);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
        return onApplyWindowInsets;
    }
}
