package androidx.leanback.transition;

import android.util.Property;
import android.view.View;

/* loaded from: classes.dex */
public interface m {
    float getGone(View view);

    float getHere(View view);

    Property<View, Float> getProperty();
}
