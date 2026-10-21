package I3;

import M.C0152b;
import android.os.Bundle;
import android.view.View;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;

/* loaded from: classes2.dex */
public final class k extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t f1329d;

    public k(t tVar) {
        this.f1329d = tVar;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        nVar.addAction(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
        nVar.setDismissable(true);
    }

    @Override // M.C0152b
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        if (i2 != 1048576) {
            return super.performAccessibilityAction(view, i2, bundle);
        }
        this.f1329d.dismiss();
        return true;
    }
}
