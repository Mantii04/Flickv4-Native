package androidx.savedstate;

import android.view.View;
import q1.j;

/* loaded from: classes.dex */
public abstract class a {
    public static final void set(View view, j jVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, jVar);
    }
}
