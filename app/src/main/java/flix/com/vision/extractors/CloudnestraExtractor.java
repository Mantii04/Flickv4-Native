package flix.com.vision.extractors;

import U4.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.models.VideoSource;
import g6.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class CloudnestraExtractor {
    private f callBack;
    private Context context;
    private final String TAG = "CloudnestraExtractor";
    private String baseDom = "https://cloudnestra.com";
    private final String sourceUrl = "https://vsembed.ru/embed";

    public CloudnestraExtractor(Context context, f fVar) {
        this.context = context;
        this.callBack = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getRandomizedHeaders() {
        HashMap q6 = b.c.q("User-Agent", new String[]{"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36"}[new Random().nextInt(3)], HttpHeaders.ACCEPT, "*/*");
        q6.put(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.9");
        q6.put(HttpHeaders.REFERER, this.baseDom + RemoteSettings.FORWARD_SLASH_STRING);
        q6.put("sec-ch-ua", "\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"");
        q6.put("sec-ch-ua-mobile", "?0");
        q6.put("sec-ch-ua-platform", "\"Windows\"");
        q6.put("Sec-Fetch-Dest", "iframe");
        q6.put("Sec-Fetch-Mode", "no-cors");
        q6.put("Sec-Fetch-Site", "same-origin");
        return q6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getWithHeaders(String str, Map<String, String> map) {
        try {
            OkHttpClient okHttpClient = new OkHttpClient();
            Request.Builder url = new Request.Builder().url(str);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                url.addHeader(entry.getKey(), entry.getValue());
            }
            return okHttpClient.newCall(url.build()).execute().body().string();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String matchRegex(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = Pattern.compile(str2, 2).matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return null;
    }

    @SuppressLint({"StaticFieldLeak"})
    public void fetchLinks(final String str, final String str2, final String str3, final boolean z6) {
        new AsyncTask<Void, Void, VideoSource>() { // from class: flix.com.vision.extractors.CloudnestraExtractor.1
            @Override // android.os.AsyncTask
            public VideoSource doInBackground(Void... voidArr) {
                String withHeaders;
                try {
                    withHeaders = CloudnestraExtractor.this.getWithHeaders(z6 ? "https://vsembed.ru/embed/movie/" + str : "https://vsembed.ru/embed/tv/" + str + RemoteSettings.FORWARD_SLASH_STRING + str2 + "-" + str3, CloudnestraExtractor.this.getRandomizedHeaders());
                } catch (Exception e3) {
                    Log.e("CloudnestraExtractor", "Extraction error", e3);
                }
                if (withHeaders == null) {
                    return null;
                }
                org.jsoup.nodes.b selectFirst = e.parse(withHeaders).selectFirst("iframe");
                if (selectFirst != null) {
                    String attr = selectFirst.attr("src");
                    if (attr.startsWith("//")) {
                        attr = "https:".concat(attr);
                    }
                    Uri parse = Uri.parse(attr);
                    CloudnestraExtractor.this.baseDom = parse.getScheme() + "://" + parse.getHost();
                }
                Matcher matcher = Pattern.compile("<!--([\\s\\S]*?)-->").matcher(withHeaders);
                while (matcher.find()) {
                    String group = matcher.group(1);
                    if (group.contains("serversList")) {
                        Iterator<org.jsoup.nodes.b> it = e.parse(group).select(".server").iterator();
                        while (it.hasNext()) {
                            String attr2 = it.next().attr("data-hash");
                            if (attr2 != null && !attr2.isEmpty()) {
                                Log.d("CloudnestraExtractor", "Found hash in comment: " + attr2);
                                String str4 = CloudnestraExtractor.this.baseDom + "/rcp/" + attr2;
                                Map randomizedHeaders = CloudnestraExtractor.this.getRandomizedHeaders();
                                randomizedHeaders.put("Sec-Fetch-Dest", "");
                                String matchRegex = CloudnestraExtractor.this.matchRegex(CloudnestraExtractor.this.getWithHeaders(str4, randomizedHeaders), "src:\\s*'([^']*)'");
                                if (matchRegex != null && matchRegex.startsWith("/prorcp/")) {
                                    String str5 = CloudnestraExtractor.this.baseDom + matchRegex;
                                    CloudnestraExtractor cloudnestraExtractor = CloudnestraExtractor.this;
                                    String withHeaders2 = cloudnestraExtractor.getWithHeaders(str5, cloudnestraExtractor.getRandomizedHeaders());
                                    if (withHeaders2 != null) {
                                        HashMap hashMap = new HashMap();
                                        Matcher matcher2 = Pattern.compile("(?:var\\s+)?(\\w+)\\s*=\\s*[\"']([^\"']*)[\"']").matcher(withHeaders2);
                                        while (matcher2.find()) {
                                            hashMap.put(matcher2.group(1), matcher2.group(2));
                                        }
                                        if (!hashMap.containsKey("v1")) {
                                            String host = Uri.parse(CloudnestraExtractor.this.baseDom).getHost();
                                            for (int i2 = 1; i2 <= 5; i2++) {
                                                hashMap.put("v" + i2, host);
                                            }
                                        }
                                        String matchRegex2 = CloudnestraExtractor.this.matchRegex(withHeaders2, "file\\s*:\\s*[\"']([^\"']+)[\"']");
                                        if (matchRegex2 != null) {
                                            for (String str6 : matchRegex2.split(" or ")) {
                                                String trim = str6.trim();
                                                for (Map.Entry entry : hashMap.entrySet()) {
                                                    trim = trim.replace("{" + ((String) entry.getKey()) + "}", (CharSequence) entry.getValue());
                                                }
                                                if (trim.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                                                    VideoSource videoSource = new VideoSource();
                                                    videoSource.streamUrl = trim;
                                                    videoSource.label = "1080p - [FVSTREAM 4] · [DIRECT] · English";
                                                    videoSource.streamable = true;
                                                    videoSource.quality = 1080;
                                                    videoSource.referer = CloudnestraExtractor.this.baseDom + RemoteSettings.FORWARD_SLASH_STRING;
                                                    return videoSource;
                                                }
                                            }
                                        } else {
                                            continue;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                }
                return null;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(VideoSource videoSource) {
                if (videoSource != null) {
                    CloudnestraExtractor.this.callBack.OnSuccess(videoSource);
                } else {
                    CloudnestraExtractor.this.callBack.OnError();
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
