package I4;

import A.i;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f implements Callback {
    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        iOException.printStackTrace();
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        if (response.isSuccessful()) {
            ResponseBody body = response.body();
            Objects.requireNonNull(body);
            String string = body.string();
            StringBuilder sb = new StringBuilder("{\n  \"results\": [");
            String str = RealDebridCommon.f15824b;
            try {
                JSONArray jSONArray = new JSONObject(i.o(sb, string, "]\n}")).getJSONArray("results");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    RealDebridCommon.f15824b = jSONObject.getString("access_token");
                    g.f1389b = jSONObject.getString("refresh_token");
                    RealDebridCommon.f15826f = jSONObject.getString("token_type");
                }
                g.f1388a.edit().putString("ACCESS_TOKEN", RealDebridCommon.f15824b).apply();
                g.f1388a.edit().putString("REFRESH_TOKEN", g.f1389b).apply();
                g.f1388a.edit().putString("TOKEN_TYPE", RealDebridCommon.f15826f).apply();
                g.f1388a.edit().putBoolean("IS_RD_LOGGED_IN", true).apply();
                RealDebridCommon.f15828m = true;
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }
}
