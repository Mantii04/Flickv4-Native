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
public final class c implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RealDebridLoginActivity f1385a;

    public c(RealDebridLoginActivity realDebridLoginActivity) {
        this.f1385a = realDebridLoginActivity;
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        RealDebridLoginActivity realDebridLoginActivity = this.f1385a;
        if (!response.isSuccessful()) {
            throw new IOException("error " + response);
        }
        ResponseBody body = response.body();
        Objects.requireNonNull(body);
        String string = body.string();
        StringBuilder sb = new StringBuilder("{\n  \"results\": [");
        String str = RealDebridCommon.f15824b;
        try {
            JSONArray jSONArray = new JSONObject(i.o(sb, string, "]\n}")).getJSONArray("results");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                realDebridLoginActivity.f15836f = jSONObject.getString("device_code");
                realDebridLoginActivity.f15837j = jSONObject.getString("user_code");
                jSONObject.getInt("interval");
                jSONObject.getInt("expires_in");
                jSONObject.getString("verification_url");
            }
        } catch (Exception unused) {
        }
        int i7 = RealDebridLoginActivity.f15833q;
        new Handler(Looper.getMainLooper()).post(new a(realDebridLoginActivity, 0));
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
    }
}
