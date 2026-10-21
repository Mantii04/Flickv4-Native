package flix.com.vision.extractors;

import P5.i;
import U4.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.models.VideoSource;
import g6.e;
import h5.AbstractC1000n;
import j6.h;
import kotlin.text.Regex;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class DoodExtractor extends BaseExtractor {
    VideoSource input;
    String referer;

    public DoodExtractor(Context context, f fVar) {
        this.context = context;
        this.callBack = fVar;
        this.baseUrl = "https://doodstream.com";
    }

    @SuppressLint({"StaticFieldLeak"})
    public void fetchLinks(final VideoSource videoSource) {
        this.referer = videoSource.streamUrl;
        new AsyncTask<Void, Void, String>() { // from class: flix.com.vision.extractors.DoodExtractor.1
            @Override // android.os.AsyncTask
            public String doInBackground(Void... voidArr) {
                String str;
                String string;
                try {
                    Response response = App.get(videoSource.streamUrl, DoodExtractor.this.baseUrl);
                    str = "" + response.request().url().host();
                    string = response.body().string();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (string == null) {
                    return null;
                }
                h parse = e.parse(string);
                String str2 = DoodExtractor.this.baseUrl;
                try {
                    if (AbstractC1000n.notNull(parse.baseUri())) {
                        str2 = parse.baseUri();
                    } else {
                        String baseUrl = AbstractC1000n.getBaseUrl(videoSource.streamUrl);
                        if (AbstractC1000n.notNull(videoSource.streamUrl)) {
                            str2 = baseUrl;
                        }
                    }
                } catch (Exception unused) {
                }
                if (str2 != null) {
                    str2 = str2.replace("http://", "").replace("https://", "");
                }
                if (!AbstractC1000n.notNull(str2)) {
                    str2 = "DOOD";
                }
                String passMD5 = DoodExtractor.this.getPassMD5(parse.html());
                if (passMD5 == null) {
                    return null;
                }
                org.jsoup.nodes.b first = parse.getElementsByTag("TITLE").first();
                String str3 = "HD";
                String quality = first != null ? DoodExtractor.this.getQuality(first.text()) : "HD";
                if (AbstractC1000n.notNull(quality)) {
                    str3 = quality;
                }
                String str4 = str + passMD5;
                String str5 = passMD5.split(RemoteSettings.FORWARD_SLASH_STRING)[passMD5.split(RemoteSettings.FORWARD_SLASH_STRING).length - 1];
                if (!str4.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                    str4 = "https://".concat(str4);
                }
                String str6 = App.get(str4, videoSource.streamUrl).body().string() + "qWMG3yc6F5?token=" + str5;
                VideoSource videoSource2 = new VideoSource();
                videoSource2.streamUrl = str6;
                videoSource2.streamable = true;
                videoSource2.external_link = false;
                videoSource2.label = str3 + " - [" + str2.toUpperCase() + "] - [DIRECT] - English";
                DoodExtractor doodExtractor = DoodExtractor.this;
                videoSource2.referer = doodExtractor.referer;
                doodExtractor.callBack.OnSuccess(videoSource2);
                return null;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(String str) {
                super.onPostExecute((AnonymousClass1) str);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public String getPassMD5(String str) {
        try {
            return ((i) new Regex("/pass_md5/[^']*").find(str, 0)).getValue();
        } catch (Exception unused) {
            return null;
        }
    }

    public String getQuality(String str) {
        try {
            return ((i) new Regex("\\d{3,4}p").find(str, 0)).getValue();
        } catch (Exception unused) {
            return null;
        }
    }
}
