package androidx.activity.result;

import android.annotation.SuppressLint;
import z.AbstractC1960f;

/* loaded from: classes.dex */
public abstract class d {
    public void launch(@SuppressLint({"UnknownNullness"}) Object obj) {
        launch(obj, null);
    }

    public abstract void launch(@SuppressLint({"UnknownNullness"}) Object obj, AbstractC1960f abstractC1960f);

    public abstract void unregister();
}
