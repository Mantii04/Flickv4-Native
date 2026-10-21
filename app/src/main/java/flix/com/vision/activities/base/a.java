package flix.com.vision.activities.base;

import android.os.Bundle;
import e.AbstractActivityC0842v;

/* loaded from: classes2.dex */
public abstract class a extends AbstractActivityC0842v {
    protected boolean killed = false;
    protected boolean showAdWhenRaedy = false;

    public void Show() {
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        this.killed = true;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        try {
            super.onResume();
        } catch (Exception unused) {
        }
    }
}
