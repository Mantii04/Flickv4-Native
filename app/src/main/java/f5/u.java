package f5;

import android.view.View;
import flix.com.vision.tv.PlayerActivityLiveExtended;

/* loaded from: classes2.dex */
public final class u implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveExtended f14409b;

    public u(PlayerActivityLiveExtended playerActivityLiveExtended) {
        this.f14409b = playerActivityLiveExtended;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f14409b.finish();
    }
}
