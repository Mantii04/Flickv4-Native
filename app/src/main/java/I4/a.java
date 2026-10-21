package I4;

import android.os.Handler;
import android.os.Looper;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.api.realdebrid.RealDebridLoginActivity;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1381b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RealDebridLoginActivity f1382e;

    public /* synthetic */ a(RealDebridLoginActivity realDebridLoginActivity, int i2) {
        this.f1381b = i2;
        this.f1382e = realDebridLoginActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RealDebridLoginActivity realDebridLoginActivity = this.f1382e;
        switch (this.f1381b) {
            case 0:
                realDebridLoginActivity.f15835e.setText(realDebridLoginActivity.f15837j);
                realDebridLoginActivity.f15834b.setVisibility(8);
                realDebridLoginActivity.f15835e.setVisibility(0);
                new Handler(Looper.getMainLooper()).postDelayed(new a(realDebridLoginActivity, 1), 5000L);
                break;
            case 1:
                int i2 = RealDebridLoginActivity.f15833q;
                realDebridLoginActivity.getClass();
                new OkHttpClient().newCall(new Request.Builder().header("User-Agent", RealDebridCommon.f15832r).url(RealDebridCommon.f15829n + realDebridLoginActivity.f15836f).build()).enqueue(new d(realDebridLoginActivity));
                break;
            default:
                int i7 = RealDebridLoginActivity.f15833q;
                realDebridLoginActivity.getClass();
                new OkHttpClient().newCall(new Request.Builder().header("User-Agent", RealDebridCommon.f15832r).url(RealDebridCommon.f15831q).post(new FormBody.Builder().add("client_id", realDebridLoginActivity.f15838m).add("client_secret", realDebridLoginActivity.f15839n).add("code", realDebridLoginActivity.f15836f).add("grant_type", "http://oauth.net/grant_type/device/1.0").build()).build()).enqueue(new e(realDebridLoginActivity));
                break;
        }
    }
}
