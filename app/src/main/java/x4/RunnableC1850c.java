package x4;

import android.util.Log;
import android.widget.Toast;
import flix.com.vision.App;
import java.util.ArrayList;
import org.greenrobot.eventbus.EventBus;

/* renamed from: x4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1850c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20926b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ App f20927e;

    public /* synthetic */ RunnableC1850c(App app, int i2) {
        this.f20926b = i2;
        this.f20927e = app;
    }

    @Override // java.lang.Runnable
    public final void run() {
        App app = this.f20927e;
        switch (this.f20926b) {
            case 0:
                ArrayList arrayList = App.f14430z;
                Toast.makeText(app.getApplicationContext(), "Anime section ready...", 0).show();
                break;
            case 1:
                ArrayList arrayList2 = App.f14430z;
                try {
                    app.d();
                    app.b();
                    app.fetchReleaseNote();
                    app.loadRemoteConfig();
                    V4.a.fetchTMDBAPI();
                    app.initTech(null);
                    T4.a.getInstance().init(app);
                    App.f14429N = true;
                    EventBus.getDefault().post(new R4.d());
                    break;
                } catch (Exception e3) {
                    Log.e("AppInit", "Background init failed", e3);
                    App.f14429N = true;
                    EventBus.getDefault().post(new R4.d());
                    return;
                }
            default:
                ArrayList arrayList3 = App.f14430z;
                app.cleanTorrentsRealDebrid();
                break;
        }
    }
}
