package f5;

import androidx.media3.datasource.DataSchemeDataSource;
import com.android.volley.AuthFailureError;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import flix.com.vision.models.Json;
import java.util.Map;

/* loaded from: classes2.dex */
public final class l extends h2.t {
    @Override // com.android.volley.Request
    public Map<String, String> getParams() throws AuthFailureError {
        JsonObject jsonObject = (JsonObject) new GsonBuilder().create().toJsonTree(new Json());
        jsonObject.addProperty("method_name", "token_data");
        return b.c.p(DataSchemeDataSource.SCHEME_DATA, Json.toBase64(jsonObject.toString()));
    }
}
