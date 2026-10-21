package X4;

import android.os.AsyncTask;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.models.adult.AdultVideo;
import h6.h;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4247a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f4248b;

    public f(g gVar, String str) {
        this.f4248b = gVar;
        this.f4247a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        Matcher matcher;
        g gVar;
        try {
            matcher = Pattern.compile("video_related=\\[.*?\\];").matcher(((h) g6.e.connect(this.f4247a)).get().toString());
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
        while (true) {
            boolean find = matcher.find();
            gVar = this.f4248b;
            if (!find) {
                break;
            }
            try {
                JSONArray jSONArray = new JSONArray(matcher.group(0).replace("video_related=", "").replace("}];", "}]"));
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    try {
                        JSONObject jSONObject = jSONArray.getJSONObject(i2);
                        String string = jSONObject.getString("tf");
                        String string2 = jSONObject.getString(CmcdData.OBJECT_TYPE_INIT_SEGMENT);
                        String string3 = jSONObject.getString("d");
                        String str = "https://xvideos.com" + jSONObject.getString("u");
                        AdultVideo adultVideo = new AdultVideo();
                        adultVideo.title = string;
                        adultVideo.img_url = string2;
                        adultVideo.duration = string3;
                        adultVideo.url = str;
                        gVar.f4249a.add(adultVideo);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            e3.printStackTrace();
            return null;
        }
        if (gVar.f4249a.size() <= 0) {
            return null;
        }
        gVar.f4250b.OnVideoListSuccess(gVar.f4249a);
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((f) str);
    }
}
