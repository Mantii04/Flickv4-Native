package M;

import android.view.View;

/* loaded from: classes.dex */
public interface I {
    void onNestedPreScroll(View view, int i2, int i7, int[] iArr, int i8);

    void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10);

    void onNestedScrollAccepted(View view, View view2, int i2, int i7);

    boolean onStartNestedScroll(View view, View view2, int i2, int i7);

    void onStopNestedScroll(View view, int i2);
}
