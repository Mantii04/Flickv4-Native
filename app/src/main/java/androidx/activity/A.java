package androidx.activity;

import android.view.View;

/* loaded from: classes.dex */
public abstract class A {
    public static final void set(View view, y onBackPressedDispatcherOwner) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
