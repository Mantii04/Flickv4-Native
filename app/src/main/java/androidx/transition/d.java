package androidx.transition;

import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class d {
    public static d getCurrentScene(ViewGroup viewGroup) {
        if (viewGroup.getTag(R.id.transition_current_scene) == null) {
            return null;
        }
        throw new ClassCastException();
    }
}
