package I4;

import A.i;
import android.os.Handler;
import android.os.Looper;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.api.realdebrid.RealDebridLoginActivity;
import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RealDebridLoginActivity f1386a;

    public d(RealDebridLoginActivity realDebridLoginActivity) {
        this.f1386a = realDebridLoginActivity;
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        boolean isSuccessful = response.isSuccessful();
        RealDebridLoginActivity realDebridLoginActivity = this.f1386a;
        if (!isSuccessful) {
            int i2 = RealDebridLoginActivity.f15833q;
            realDebridLoginActivity.getClass();
            new Handler(Looper.getMainLooper()).postDelayed(new a(realDebridLoginActivity, 1), 5000L);
            return;
        }
        ResponseBody body = response.body();
        Objects.requireNonNull(body);
        String string = body.string();
        StringBuilder sb = new StringBuilder("{\n  \"results\": [");
        String str = RealDebridCommon.f15824b;
        try {
            JSONArray jSONArray = new JSONObject(i.o(sb, string, "]\n}")).getJSONArray("results");
            for (int i7 = 0; i7 < jSONArray.length(); i7++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i7);
                realDebridLoginActivity.f15838m = jSONObject.getString("client_id");
                realDebridLoginActivity.f15839n = jSONObject.getString("client_secret");
                realDebridLoginActivity.f15840p.edit().putString("CLIENT_ID", realDebridLoginActivity.f15838m).apply();
                realDebridLoginActivity.f15840p.edit().putString("CLIENT_SECRET", realDebridLoginActivity.f15839n).apply();
                realDebridLoginActivity.f15840p.edit().putString("DEVICE_CODE", realDebridLoginActivity.f15836f).apply();
            }
            int i8 = RealDebridLoginActivity.f15833q;
            realDebridLoginActivity.getClass();
            new Handler(Looper.getMainLooper()).post(new a(realDebridLoginActivity, 2));
        } catch (Exception unused) {
        }
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
    }
}
