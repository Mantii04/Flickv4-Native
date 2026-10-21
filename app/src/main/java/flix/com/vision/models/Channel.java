package flix.com.vision.models;

import T4.f;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class Channel {
    public int cat_id;
    public String cat_name;
    public int channel_id;
    public int country_id;
    public String country_name;
    public String logoUrl;
    public String name;
    public int status;
    public ArrayList<StreamUrl> streamUrls = new ArrayList<>();
    public String wiz_name;

    public Channel(JSONObject jSONObject) {
        parse(jSONObject);
    }

    public boolean IsValid() {
        return this.streamUrls.size() > 0;
    }

    public void parse(JSONObject jSONObject) {
        try {
            this.name = f.decode2(jSONObject.getString(f.f3689c));
            this.channel_id = Integer.parseInt(f.decode2(jSONObject.getString(f.f3690d)));
            this.wiz_name = f.decode(jSONObject.getString(f.f3691e));
            this.cat_id = Integer.parseInt(jSONObject.getString(f.f3696j));
            this.cat_name = jSONObject.getString(f.f3699m);
            this.country_id = Integer.parseInt(jSONObject.getString(f.f3697k));
            this.country_name = jSONObject.getString(f.f3700n);
            this.logoUrl = f.decode(jSONObject.getString(f.f3701o));
            this.status = Integer.parseInt(jSONObject.getString(f.f3698l));
            JSONArray jSONArray = jSONObject.getJSONArray(f.f3692f);
            if (jSONArray.length() > 1) {
                this.name += "";
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                StreamUrl streamUrl = new StreamUrl((JSONObject) jSONArray.get(i2));
                if (streamUrl.IsValid()) {
                    this.streamUrls.add(streamUrl);
                }
            }
        } catch (Exception unused) {
            this.status = 0;
        }
    }
}
