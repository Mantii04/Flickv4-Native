package f5;

import com.android.volley.Response;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.StreamUrl;
import java.util.ArrayList;
import java.util.Collections;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: f5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0930d implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f14396b;

    public C0930d(boolean z6) {
        this.f14396b = z6;
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("SWIFTSTREAMZ");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    ChannelTv channelTv = new ChannelTv();
                    channelTv.label = jSONObject.getString("c_title");
                    channelTv.categorie_name = jSONObject.getString("c_name") + "";
                    channelTv.id = jSONObject.getString("id");
                    channelTv.type = 999;
                    channelTv.logoUrl = jSONObject.getString("c_thumbnail");
                    ArrayList arrayList2 = new ArrayList();
                    if (!jSONObject.getString("stream_list").equals("null")) {
                        JSONArray jSONArray2 = jSONObject.getJSONArray("stream_list");
                        if (jSONArray2.length() > 0) {
                            for (int i7 = 0; i7 < jSONArray2.length(); i7++) {
                                JSONObject jSONObject2 = jSONArray2.getJSONObject(i7);
                                StreamUrl streamUrl = new StreamUrl();
                                streamUrl.stream_id = Integer.parseInt(jSONObject2.getString("stream_id"));
                                streamUrl.token = Integer.parseInt(jSONObject2.getString("token"));
                                streamUrl.token_str = jSONObject2.getString("token");
                                streamUrl.player_user_agent = jSONObject2.getString("agent");
                                streamUrl.stream_url = jSONObject2.getString("stream_url");
                                streamUrl.label = jSONObject2.getString("name");
                                streamUrl.player_referer = jSONObject2.getString(C4913m.f14515o);
                                arrayList2.add(streamUrl);
                            }
                            channelTv.links.addAll(arrayList2);
                            if (channelTv.links.get(0) != null && !channelTv.links.get(0).label.contains("HD") && channelTv.links.size() > 1) {
                                Collections.reverse(channelTv.links);
                            }
                        }
                    }
                    boolean z6 = this.f14396b;
                    if (!z6 || (z6 && !channelTv.label.toLowerCase().contains("sky") && !channelTv.label.toLowerCase().contains("milan") && !channelTv.label.toLowerCase().contains("fox"))) {
                        arrayList.add(channelTv);
                    }
                } catch (Exception unused) {
                }
            }
            R4.a aVar = new R4.a();
            aVar.f3128a.addAll(arrayList);
            EventBus.getDefault().post(aVar);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }
}
