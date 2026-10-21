package f5;

import com.android.volley.Response;
import flix.com.vision.models.StreamUrl;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: f5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0933g implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StreamUrl f14398b;

    public C0933g(StreamUrl streamUrl) {
        this.f14398b = streamUrl;
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(String str) {
        StreamUrl streamUrl = this.f14398b;
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONObject("SWIFTSTREAMZ").getJSONArray("token_list");
            if (jSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    if (streamUrl.token_str.equals(jSONObject.getString("t_id"))) {
                        m.GetStreamLink3(streamUrl, jSONObject.getString("token_link"));
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
