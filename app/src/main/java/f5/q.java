package f5;

import android.view.MenuItem;
import flix.com.vision.R;
import flix.com.vision.tv.PlayerActivityLiveExtended;
import l.m2;

/* loaded from: classes2.dex */
public final class q implements m2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveExtended f14405b;

    public q(PlayerActivityLiveExtended playerActivityLiveExtended) {
        this.f14405b = playerActivityLiveExtended;
    }

    @Override // l.m2
    public boolean onMenuItemClick(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int i2 = R.id.action_episodes;
        PlayerActivityLiveExtended playerActivityLiveExtended = this.f14405b;
        if (itemId == i2) {
            try {
                playerActivityLiveExtended.f16212n.scrollToPosition(playerActivityLiveExtended.f16219v);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            playerActivityLiveExtended.f16211m.setVisibility(0);
            playerActivityLiveExtended.f16211m.startAnimation(playerActivityLiveExtended.f16214q);
        } else if (menuItem.getItemId() == R.id.action_close) {
            if (playerActivityLiveExtended.f16211m.getVisibility() == 0) {
                playerActivityLiveExtended.f16211m.startAnimation(playerActivityLiveExtended.f16215r);
                playerActivityLiveExtended.f16211m.setVisibility(8);
                return true;
            }
            playerActivityLiveExtended.e();
        }
        return false;
    }
}
