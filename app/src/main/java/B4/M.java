package B4;

import android.content.Intent;
import android.view.View;
import flix.com.vision.App;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.WebPlayerActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class M implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f235b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivity f236e;

    public /* synthetic */ M(WebPlayerActivity webPlayerActivity, int i2) {
        this.f235b = i2;
        this.f236e = webPlayerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WebPlayerActivity webPlayerActivity = this.f236e;
        switch (this.f235b) {
            case 0:
                webPlayerActivity.f15726K = false;
                break;
            case 1:
                int i2 = WebPlayerActivity.f15715O;
                webPlayerActivity.getClass();
                try {
                    if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                        App.getInstance().f14438q.removeActiveCheckin().subscribe();
                    }
                    webPlayerActivity.finish();
                    webPlayerActivity.f15726K = false;
                    break;
                } catch (Exception unused) {
                    webPlayerActivity.finish();
                    return;
                }
            case 2:
                webPlayerActivity.f15726K = false;
                break;
            case 3:
                webPlayerActivity.f15726K = false;
                break;
            case 4:
                webPlayerActivity.f15726K = false;
                break;
            default:
                webPlayerActivity.f15727L = true;
                webPlayerActivity.startActivity(new Intent(webPlayerActivity, (Class<?>) SettingsActivity.class));
                break;
        }
    }
}
