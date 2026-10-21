package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.runtime.R;

/* loaded from: classes.dex */
public abstract class k0 {
    public static final void set(View view, InterfaceC0561t interfaceC0561t) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, interfaceC0561t);
    }
}
