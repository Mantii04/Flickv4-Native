package j;

import android.content.Context;
import android.content.res.Configuration;
import androidx.appcompat.R;

/* renamed from: j.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1018a {

    /* renamed from: a, reason: collision with root package name */
    public Context f16867a;

    public static C1018a get(Context context) {
        C1018a c1018a = new C1018a();
        c1018a.f16867a = context;
        return c1018a;
    }

    public boolean enableHomeButtonByDefault() {
        return this.f16867a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int getEmbeddedMenuWidthLimit() {
        return this.f16867a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int getMaxActionButtons() {
        Configuration configuration = this.f16867a.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i7 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600) {
            return 5;
        }
        if (i2 > 960 && i7 > 720) {
            return 5;
        }
        if (i2 > 720 && i7 > 960) {
            return 5;
        }
        if (i2 >= 500) {
            return 4;
        }
        if (i2 > 640 && i7 > 480) {
            return 4;
        }
        if (i2 <= 480 || i7 <= 640) {
            return i2 >= 360 ? 3 : 2;
        }
        return 4;
    }

    public boolean hasEmbeddedTabs() {
        return this.f16867a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    }

    public boolean showsOverflowMenuButton() {
        return true;
    }
}
