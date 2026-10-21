package b5;

import P5.i;
import android.os.AsyncTask;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import flix.com.vision.App;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.VideoSource;
import flix.com.vision.utils.JsonUtils;
import g6.e;
import h5.AbstractC1000n;
import h5.C0997k;
import j6.h;
import kotlin.text.Regex;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class c extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f8520a;

    public c(d dVar) {
        this.f8520a = dVar;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String str;
        Response response;
        String str2;
        VideoSource videoSource;
        String upperCase;
        String str3;
        VideoSource videoSource2;
        String upperCase2;
        String str4 = "category";
        d dVar = this.f8520a;
        try {
            JsonArray asJsonArray = JsonUtils.parse(App.get(dVar.domain + "/api/v1/titles/" + AbstractC1000n.encodeBase64("tmdb|movie|" + dVar.f8521a.getMovieId()) + "?loader=titlePage", dVar.domain).body().string()).getAsJsonObject().get("title").getAsJsonObject().get("videos").getAsJsonArray();
            int i2 = 0;
            while (i2 < asJsonArray.size()) {
                JsonObject asJsonObject = asJsonArray.get(i2).getAsJsonObject();
                if (asJsonObject.get(str4).getAsString() != null && asJsonObject.get(str4).getAsString().equalsIgnoreCase("full")) {
                    try {
                        response = App.get(asJsonObject.get("src").getAsString(), dVar.domain);
                    } catch (Exception unused) {
                    }
                    if (response.isSuccessful()) {
                        h parse = e.parse(response.body().string());
                        org.jsoup.nodes.b selectFirst = parse.selectFirst("script:containsData(sources:)");
                        String str5 = "German";
                        String str6 = "English";
                        str = str4;
                        if (selectFirst != null) {
                            try {
                                String str7 = ((i) new Regex("file:\\s*\"(.*?m3u8.*?)\"").find(selectFirst.data(), 0)).getGroupValues().get(1);
                                try {
                                    str2 = asJsonObject.get(C4913m.f14513m).getAsString();
                                } catch (Exception unused2) {
                                    str2 = null;
                                }
                                try {
                                    str6 = asJsonObject.get("language").getAsString();
                                    upperCase = str6.toUpperCase();
                                } catch (Exception unused3) {
                                }
                                try {
                                    if (!upperCase.equalsIgnoreCase("DE")) {
                                        str5 = upperCase;
                                    }
                                } catch (Exception unused4) {
                                    str6 = upperCase;
                                    str5 = str6;
                                    videoSource = new VideoSource();
                                    videoSource.streamUrl = str7;
                                    videoSource.streamable = true;
                                    videoSource.quality = 1080;
                                    videoSource.label = "1080p - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                    if (str2 != null) {
                                        videoSource.label = str2 + " - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                    }
                                    videoSource.referer = dVar.domain;
                                    dVar.callBack.OnSuccess(videoSource);
                                    i2++;
                                    str4 = str;
                                }
                                videoSource = new VideoSource();
                                videoSource.streamUrl = str7;
                                videoSource.streamable = true;
                                videoSource.quality = 1080;
                                videoSource.label = "1080p - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                if (str2 != null && str2.length() > 3) {
                                    videoSource.label = str2 + " - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                }
                                videoSource.referer = dVar.domain;
                                dVar.callBack.OnSuccess(videoSource);
                            } catch (Exception unused5) {
                            }
                            i2++;
                            str4 = str;
                        } else {
                            String evalScriptFromHTML = dVar.getEvalScriptFromHTML(parse);
                            if (evalScriptFromHTML != null) {
                                String str8 = ((i) new Regex("file:\\s*\"(.*?m3u8.*?)\"").find(new C0997k(evalScriptFromHTML).unpack(), 0)).getGroupValues().get(1);
                                try {
                                    str3 = asJsonObject.get(C4913m.f14513m).getAsString();
                                } catch (Exception unused6) {
                                    str3 = null;
                                }
                                try {
                                    str6 = asJsonObject.get("language").getAsString();
                                    upperCase2 = str6.toUpperCase();
                                } catch (Exception unused7) {
                                }
                                try {
                                    if (!upperCase2.equalsIgnoreCase("DE")) {
                                        str5 = upperCase2;
                                    }
                                } catch (Exception unused8) {
                                    str6 = upperCase2;
                                    str5 = str6;
                                    videoSource2 = new VideoSource();
                                    videoSource2.streamUrl = str8;
                                    videoSource2.streamable = true;
                                    videoSource2.quality = 1080;
                                    videoSource2.label = "1080p - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                    if (str3 != null) {
                                        videoSource2.label = str3 + " - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                    }
                                    videoSource2.referer = dVar.domain;
                                    dVar.callBack.OnSuccess(videoSource2);
                                    i2++;
                                    str4 = str;
                                }
                                videoSource2 = new VideoSource();
                                videoSource2.streamUrl = str8;
                                videoSource2.streamable = true;
                                videoSource2.quality = 1080;
                                videoSource2.label = "1080p - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                if (str3 != null && str3.length() > 3) {
                                    videoSource2.label = str3 + " - [MOFLIX] - [DIRECT] - " + str5 + " - English";
                                }
                                videoSource2.referer = dVar.domain;
                                dVar.callBack.OnSuccess(videoSource2);
                                i2++;
                                str4 = str;
                            }
                            i2++;
                            str4 = str;
                        }
                    }
                }
                str = str4;
                i2++;
                str4 = str;
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((c) str);
    }
}
