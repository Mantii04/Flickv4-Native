package C4;

import android.app.Activity;
import android.graphics.Point;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Drama;
import java.io.Serializable;
import java.util.List;
import l.C1191v1;
import l.InterfaceC1188u1;

/* renamed from: C4.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0099x implements InterfaceC1188u1, DefaultTrackSelector.TrackInfo.Factory {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f791b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f792e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f793f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f794j;

    public /* synthetic */ C0099x(Object obj, Serializable serializable, Object obj2, Object obj3) {
        this.f791b = obj;
        this.f792e = serializable;
        this.f793f = obj2;
        this.f794j = obj3;
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i2, TrackGroup trackGroup, int[] iArr) {
        List lambda$selectVideoTrack$1;
        lambda$selectVideoTrack$1 = DefaultTrackSelector.lambda$selectVideoTrack$1((DefaultTrackSelector.Parameters) this.f791b, (String) this.f792e, (int[]) this.f793f, (Point) this.f794j, i2, trackGroup, iArr);
        return lambda$selectVideoTrack$1;
    }

    @Override // l.InterfaceC1188u1
    public boolean onMenuItemClick(MenuItem menuItem) {
        C0101z c0101z = (C0101z) this.f791b;
        c0101z.getClass();
        int itemId = menuItem.getItemId();
        int i2 = R.id.action_add_favorites_live_tv;
        Drama drama = (Drama) this.f792e;
        Activity activity = c0101z.f802e;
        if (itemId == i2) {
            App.getInstance().f14439r.addDramaToFavorites(drama);
            Toast.makeText(activity, activity.getString(R.string.added_fav_label), 0).show();
        }
        if (menuItem.getItemId() == R.id.action_remove_favorites_live_tv) {
            App.getInstance().f14439r.deletDramaFromFavorites(drama);
            Toast.makeText(activity, activity.getString(R.string.removed_fav_label), 0).show();
            U4.e eVar = c0101z.f801d;
            if (eVar != null) {
                eVar.removeDramaFromFavorites(((C0100y) this.f793f).f795u);
            }
        }
        ((C1191v1) this.f794j).dismiss();
        return true;
    }
}
