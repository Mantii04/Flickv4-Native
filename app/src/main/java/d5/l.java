package d5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.models.hindi.PlaylistItem;
import flix.com.vision.processors.english.m;
import flix.com.vision.tv.Constant;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class l extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13604a;

    /* renamed from: b, reason: collision with root package name */
    public String f13605b;

    /* renamed from: c, reason: collision with root package name */
    public String f13606c;

    /* renamed from: d, reason: collision with root package name */
    public int f13607d;

    /* renamed from: e, reason: collision with root package name */
    public int f13608e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f13609f;

    /* renamed from: g, reason: collision with root package name */
    public final String f13610g;

    public l(Context context, U4.f fVar, String str) {
        this.f13609f = true;
        this.f13610g = "https://allmovieland.you/";
        this.f13604a = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = str;
        this.f13609f = App.getInstance().f14440s.getBoolean("pref_show_hindi_dubbed_direct", true);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str2 = Constant.f16184b;
        this.f13610g = sharedPreferences.getString("pref_allmvland_hst", "https://allmovieland.you/");
    }

    public void GetStreamLinkHindi(String str) {
        App.getInstance().getRequestQueue().add(new i(this, str, new g(this, 0), new J0.g(8)));
    }

    public void GetStreamLinkHindi2(String str) {
        App.getInstance().getRequestQueue().add(new j(this, str, new g(this, 1), new J0.g(8)));
    }

    public void GetStreamLinkHindi3(PlaylistItem playlistItem) {
        String str;
        if (this.f13609f || (str = playlistItem.language) == null || str.contains("English")) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.domain);
            sb.append("/playlist/");
            App.getInstance().getRequestQueue().add(new k(this, A.i.o(sb, playlistItem.file, ".txt"), new X4.a(26, this, playlistItem), new J0.g(8)));
        }
    }

    public void process(String str, int i2, int i7) {
        this.f13605b = this.domain + "/play/" + str;
        this.f13607d = i2;
        this.f13608e = i7;
        new h(this, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
