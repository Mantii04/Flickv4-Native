package f5;

import android.app.AlertDialog;
import android.view.MenuItem;
import flix.com.vision.R;
import flix.com.vision.tv.PlayerActivityLiveExternal;
import l.m2;

/* loaded from: classes2.dex */
public final class z implements m2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveExternal f14413b;

    public z(PlayerActivityLiveExternal playerActivityLiveExternal) {
        this.f14413b = playerActivityLiveExternal;
    }

    @Override // l.m2
    public boolean onMenuItemClick(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int i2 = R.id.action_episodes;
        PlayerActivityLiveExternal playerActivityLiveExternal = this.f14413b;
        if (itemId == i2) {
            try {
                playerActivityLiveExternal.f16241n.scrollToPosition(playerActivityLiveExternal.f16249w);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            playerActivityLiveExternal.f16240m.setVisibility(0);
            playerActivityLiveExternal.f16240m.startAnimation(playerActivityLiveExternal.f16244r);
        } else if (menuItem.getItemId() != R.id.action_close) {
            menuItem.getItemId();
        } else {
            if (playerActivityLiveExternal.f16240m.getVisibility() == 0) {
                playerActivityLiveExternal.f16240m.startAnimation(playerActivityLiveExternal.f16245s);
                playerActivityLiveExternal.f16240m.setVisibility(8);
                return true;
            }
            AlertDialog create = new AlertDialog.Builder(playerActivityLiveExternal).create();
            create.setTitle(playerActivityLiveExternal.getString(R.string.exit_label));
            create.setOnDismissListener(new w());
            create.setMessage(playerActivityLiveExternal.getString(R.string.stop_playback_exit_mess));
            create.setButton(-1, playerActivityLiveExternal.getString(R.string.yes_label), new x(this));
            create.setButton(-3, playerActivityLiveExternal.getString(R.string.no_label), new y());
            try {
                create.show();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        return false;
    }
}
