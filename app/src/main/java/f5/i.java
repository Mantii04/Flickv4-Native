package f5;

import androidx.media3.datasource.DataSchemeDataSource;
import com.android.volley.AuthFailureError;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import flix.com.vision.models.Json;
import h5.C0989c;
import java.util.Map;

/* loaded from: classes2.dex */
public final class i extends h2.t {
    @Override // com.android.volley.Request
    public Map<String, String> getParams() throws AuthFailureError {
        String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
        String m33722a = m.m33722a(valueOf);
        try {
            C0989c.m33719a(new C0989c().mo31918a(valueOf + '&' + m33722a));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        JsonObject jsonObject = (JsonObject) new GsonBuilder().create().toJsonTree(new Json());
        jsonObject.addProperty("method_name", "token_data");
        return b.c.p(DataSchemeDataSource.SCHEME_DATA, Json.toBase64(jsonObject.toString()));
    }
}
