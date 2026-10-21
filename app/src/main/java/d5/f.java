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
public final class f extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13592a;

    /* renamed from: b, reason: collision with root package name */
    public String f13593b;

    /* renamed from: c, reason: collision with root package name */
    public String f13594c;

    /* renamed from: d, reason: collision with root package name */
    public final String f13595d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13596e;

    public f(Context context, U4.f fVar, String str) {
        this.f13595d = "https://allmovieland.you/";
        this.f13596e = true;
        this.f13592a = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = str;
        this.f13596e = App.getInstance().f14440s.getBoolean("pref_show_hindi_dubbed_direct", true);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str2 = Constant.f16184b;
        this.f13595d = sharedPreferences.getString("pref_allmvland_hst", "https://allmovieland.you/");
    }

    public void GetStreamLinkHindi(String str) {
        App.getInstance().getRequestQueue().add(new c(this, str, new C0811a(this, 0), new J0.g(8)));
    }

    public void GetStreamLinkHindi2(String str) {
        App.getInstance().getRequestQueue().add(new d(this, str, new C0811a(this, 1), new J0.g(8)));
    }

    public void GetStreamLinkHindi3(PlaylistItem playlistItem) {
        String str;
        if (this.f13596e || (str = playlistItem.language) == null || str.contains("English")) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.domain);
            sb.append("/playlist/");
            App.getInstance().getRequestQueue().add(new e(this, A.i.o(sb, playlistItem.file, ".txt"), new X4.a(25, this, playlistItem), new J0.g(8)));
        }
    }

    public void process(String str) {
        this.f13593b = this.domain + "/play/" + str;
        new AsyncTaskC0812b(this, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
