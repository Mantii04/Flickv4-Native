package I4;

import android.content.Context;
import android.content.SharedPreferences;
import flix.com.vision.App;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static SharedPreferences f1388a;

    /* renamed from: b, reason: collision with root package name */
    public static String f1389b;

    /* renamed from: c, reason: collision with root package name */
    public static String f1390c;

    /* renamed from: d, reason: collision with root package name */
    public static String f1391d;

    public g(Context context) {
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        f1388a = sharedPreferences;
        f1389b = sharedPreferences.getString("REFRESH_TOKEN", null);
        f1390c = f1388a.getString("CLIENT_ID", null);
        f1391d = f1388a.getString("CLIENT_SECRET", null);
        f1388a.getString("DEVICE_CODE", null);
    }

    public static String Do_Async() {
        new OkHttpClient().newCall(new Request.Builder().header("User-Agent", RealDebridCommon.f15832r).url(RealDebridCommon.f15831q).post(new FormBody.Builder().add("client_id", f1390c).add("client_secret", f1391d).add("code", f1389b).add("grant_type", "http://oauth.net/grant_type/device/1.0").build()).build()).enqueue(new f());
        return RealDebridCommon.f15824b;
    }
}
