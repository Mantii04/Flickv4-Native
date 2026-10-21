package B4;

import android.view.View;
import flix.com.vision.activities.player.PlayerActivityLiveTV;

/* renamed from: B4.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC0046i implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveTV f266b;

    public ViewOnClickListenerC0046i(PlayerActivityLiveTV playerActivityLiveTV) {
        this.f266b = playerActivityLiveTV;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f266b.finish();
    }
}
