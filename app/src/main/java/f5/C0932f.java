package f5;

import androidx.media3.datasource.DataSchemeDataSource;
import com.android.volley.AuthFailureError;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.Json;
import java.util.Map;

/* renamed from: f5.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0932f extends h2.t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f14397f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0932f(String str, C0930d c0930d, C0931e c0931e, String str2) {
        super(1, str, c0930d, c0931e);
        this.f14397f = str2;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getParams() throws AuthFailureError {
        JsonObject jsonObject = (JsonObject) new GsonBuilder().create().toJsonTree(new Json());
        jsonObject.addProperty("method_name", "get_channels");
        jsonObject.addProperty(C4913m.f14507g, this.f14397f);
        return b.c.p(DataSchemeDataSource.SCHEME_DATA, Json.toBase64(jsonObject.toString()));
    }
}
