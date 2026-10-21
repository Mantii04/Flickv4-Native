package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.viewmodel.R;

/* loaded from: classes.dex */
public abstract class l0 {
    public static final void set(View view, j0 j0Var) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_view_model_store_owner, j0Var);
    }
}
