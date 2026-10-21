package androidx.activity;

import android.view.View;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public interface n extends Executor {
    void activityDestroyed();

    void viewCreated(View view);
}
