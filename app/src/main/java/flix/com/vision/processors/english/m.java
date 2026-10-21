package flix.com.vision.processors.english;

import C4.M;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.extractors.DoodExtractorExtended;
import flix.com.vision.extractors.FileMoonExtractor;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public abstract class m {
    public U4.f callBack;
    Context context;
    Movie movie;
    Disposable request_all_debrid;
    boolean shouldSearch;
    public BaseProcessor$TorrentServiceType torrentServiceType;
    public int max_page = 5;
    public String domain = "";
    ArrayDeque<Integer> ids = new ArrayDeque<>();

    public static String[] b(JsonObject jsonObject) {
        try {
            if (jsonObject.has("files")) {
                JsonArray asJsonArray = jsonObject.getAsJsonArray("files");
                String str = null;
                long j7 = 0;
                for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                    JsonObject asJsonObject = asJsonArray.get(i2).getAsJsonObject();
                    String lowerCase = asJsonObject.has("name") ? asJsonObject.get("name").getAsString().toLowerCase() : "";
                    if (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || lowerCase.endsWith(".avi")) {
                        long asLong = asJsonObject.has("size") ? asJsonObject.get("size").getAsLong() : 0L;
                        if (asLong > j7) {
                            str = asJsonObject.has("id") ? asJsonObject.get("id").getAsString() : String.valueOf(i2);
                            j7 = asLong;
                        }
                    }
                }
                if (str == null && asJsonArray.size() > 0) {
                    for (int i7 = 0; i7 < asJsonArray.size(); i7++) {
                        JsonObject asJsonObject2 = asJsonArray.get(i7).getAsJsonObject();
                        long asLong2 = asJsonObject2.has("size") ? asJsonObject2.get("size").getAsLong() : 0L;
                        if (asLong2 > j7) {
                            str = asJsonObject2.has("id") ? asJsonObject2.get("id").getAsString() : String.valueOf(i7);
                            j7 = asLong2;
                        }
                    }
                }
                if (str != null) {
                    return new String[]{str, String.valueOf(j7)};
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return null;
    }

    public static boolean isEnglishlang(String str, String str2) {
        if (str != null && str.length() >= 10) {
            String lowerCase = str.toLowerCase();
            for (String str3 : T4.f.f3710x) {
                if (!lowerCase.contains("." + str3 + ".")) {
                    if (!lowerCase.toLowerCase().contains(StringUtils.SPACE + str3 + StringUtils.SPACE)) {
                        continue;
                    }
                }
                if (!str2.contains(StringUtils.SPACE + str3 + StringUtils.SPACE) && !lowerCase.contains("eng") && !lowerCase.contains("english")) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String removeSpecialCharsOld(String str) {
        return str.replaceAll("[-+.^:,]", "");
    }

    public static void setRDQtyLabelNew(VideoSource videoSource) {
        String str;
        if (videoSource == null || (str = videoSource.originalFileName) == null) {
            return;
        }
        if (str.contains("480p")) {
            videoSource.label = "480p - " + videoSource.label;
            videoSource.quality = 480;
            return;
        }
        if (videoSource.originalFileName.contains("720p")) {
            videoSource.quality = 720;
            videoSource.label = "720p - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.contains("1080p")) {
            videoSource.quality = 1080;
            videoSource.label = "1080p - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.contains("1440")) {
            videoSource.quality = 1440;
            videoSource.label = "1440 - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.contains("2160p")) {
            videoSource.quality = 4000;
            videoSource.label = "4K - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.contains("4320p")) {
            videoSource.quality = 8000;
            videoSource.label = "8K - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.toLowerCase().contains(".sd")) {
            videoSource.quality = 720;
            videoSource.label = "720p - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.toLowerCase().contains(".4k")) {
            videoSource.quality = 4000;
            videoSource.label = "4K - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.toLowerCase().contains(".hdtv")) {
            videoSource.quality = 1080;
            videoSource.label = "1080p - " + videoSource.label;
            return;
        }
        if (videoSource.originalFileName.toLowerCase().contains(".hd")) {
            videoSource.quality = 1080;
            videoSource.label = "1080p - " + videoSource.label;
        }
    }

    public final void a(final int i2, final String str, final String str2) {
        D4.a.exploreOffcloudTorrent(str2).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: flix.com.vision.processors.english.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                long j7;
                long j8;
                String str3;
                String str4;
                String str5;
                String str6 = str2;
                JsonElement jsonElement = (JsonElement) obj;
                m mVar = this;
                mVar.getClass();
                try {
                    JsonArray asJsonArray = (jsonElement.isJsonObject() && jsonElement.getAsJsonObject().has("files")) ? jsonElement.getAsJsonObject().getAsJsonArray("files") : jsonElement.isJsonArray() ? jsonElement.getAsJsonArray() : null;
                    String str7 = "";
                    if (asJsonArray != null) {
                        int i7 = 0;
                        while (true) {
                            j7 = 0;
                            if (i7 >= asJsonArray.size()) {
                                j8 = 0;
                                str4 = null;
                                break;
                            }
                            JsonElement jsonElement2 = asJsonArray.get(i7);
                            if (jsonElement2.isJsonObject()) {
                                JsonObject asJsonObject = jsonElement2.getAsJsonObject();
                                str4 = asJsonObject.has("url") ? asJsonObject.get("url").getAsString() : asJsonObject.has("link") ? asJsonObject.get("link").getAsString() : "";
                                j8 = asJsonObject.has("size") ? asJsonObject.get("size").getAsLong() : asJsonObject.has("fileSize") ? asJsonObject.get("fileSize").getAsLong() : 0L;
                                str5 = asJsonObject.has("name") ? asJsonObject.get("name").getAsString() : "";
                            } else {
                                str4 = jsonElement2.getAsString();
                                str5 = "";
                                j8 = 0;
                            }
                            String lowerCase = str4.toLowerCase();
                            String lowerCase2 = str5.toLowerCase();
                            if ((lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || lowerCase.endsWith(".avi") || lowerCase2.endsWith(".mp4") || lowerCase2.endsWith(".mkv") || lowerCase2.endsWith(".avi")) && !str4.isEmpty()) {
                                break;
                            } else {
                                i7++;
                            }
                        }
                        if (str4 != null || asJsonArray.size() <= 0) {
                            str3 = str4;
                        } else {
                            JsonElement jsonElement3 = asJsonArray.get(0);
                            if (jsonElement3.isJsonObject()) {
                                JsonObject asJsonObject2 = jsonElement3.getAsJsonObject();
                                String asString = asJsonObject2.has("url") ? asJsonObject2.get("url").getAsString() : asJsonObject2.has("link") ? asJsonObject2.get("link").getAsString() : "";
                                j8 = asJsonObject2.has("size") ? asJsonObject2.get("size").getAsLong() : 0L;
                                str3 = asString;
                            } else {
                                str3 = jsonElement3.getAsString();
                            }
                        }
                    } else {
                        j7 = 0;
                        j8 = 0;
                        str3 = null;
                    }
                    String str8 = str;
                    if (str3 == null || str3.isEmpty()) {
                        int i8 = i2;
                        if (i8 < 3) {
                            new Handler(Looper.getMainLooper()).postDelayed(new i(mVar, str8, str6, i8, 1), 2500L);
                            return;
                        }
                        return;
                    }
                    if (j8 > j7) {
                        str7 = " [" + T4.m.readableFileSize(j8) + "]";
                    }
                    VideoSource videoSource = new VideoSource();
                    videoSource.streamUrl = str3;
                    if (str8 == null || !str8.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                        videoSource.label = "[OFFCLOUD] [FAST]" + str7;
                    } else {
                        String domainName = mVar.getDomainName(str8);
                        if (domainName != null && !domainName.isEmpty()) {
                            videoSource.label = "[" + domainName + "] [OFFCLOUD]" + str7;
                        }
                    }
                    videoSource.originalFileName = mVar.getOriginalName(str8);
                    videoSource.streamable = true;
                    videoSource.isOffCloud = true;
                    videoSource.isTorrentMagnet = str8.startsWith("magnet");
                    LinksActivity.setRDQtyLabel(videoSource);
                    if (videoSource.quality == 0) {
                        videoSource.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                    }
                    mVar.addLink(videoSource);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }, new A4.c(24));
    }

    public void addLink(VideoSource videoSource) {
        String str;
        String str2 = videoSource.streamUrl;
        if (str2 != null && str2.contains("mixdrop")) {
            videoSource.isPremiumSupported = true;
        }
        if (videoSource.isPremiumSupported && (str = videoSource.streamUrl) != null && !str.contains("real-debrid")) {
            if (J4.b.f1541a) {
                unrestrictLinkTorbox(videoSource.streamUrl);
            }
            if (G4.b.f1174a) {
                unrestrictLinkOffcloud(videoSource.streamUrl);
            }
            if (PremiumizeCommon.f15822b) {
                getMagnetPremiumize(videoSource.streamUrl);
            }
            if ((J4.b.f1541a || G4.b.f1174a || PremiumizeCommon.f15822b) && !RealDebridCommon.f15828m && !AllDebridCommon.f15806f) {
                return;
            }
        }
        if (videoSource.isPremiumSupported && videoSource.originalFileName == null) {
            videoSource.originalFileName = getOriginalName(videoSource.streamUrl);
        }
        if (videoSource.isPremiumSupported || !(videoSource.streamUrl.contains("streamango") || videoSource.streamUrl.contains("rapidvideo") || videoSource.streamUrl.contains("vidcloud") || videoSource.streamUrl.contains("loadvid") || videoSource.label.toLowerCase().contains("hydrax"))) {
            if (!videoSource.streamable && videoSource.isDoodlink()) {
                new DoodExtractorExtended(this.callBack).extract(videoSource.streamUrl);
                return;
            }
            if (!videoSource.streamable && videoSource.isFileMoonlink()) {
                new FileMoonExtractor(this.context, this.callBack).fetchLinks(videoSource);
                return;
            }
            if (videoSource.external_link) {
                videoSource.label = A.i.o(new StringBuilder(), videoSource.label, "- [EMBED]");
                if (videoSource.isHindi) {
                    videoSource.label = A.i.o(new StringBuilder(), videoSource.label, "- [HINDI]");
                }
                this.callBack.OnSuccess(videoSource);
                return;
            }
            if (videoSource.streamUrl.contains("openload") || videoSource.streamUrl.contains("oload.")) {
                videoSource.external_link = true;
                videoSource.label = A.i.o(new StringBuilder(), videoSource.label, "- [EMBED]");
            } else if (videoSource.streamUrl.contains("embed") || videoSource.streamUrl.contains("viduplayer")) {
                videoSource.external_link = true;
                videoSource.label = A.i.o(new StringBuilder(), videoSource.label, "- [EMBED]");
                this.callBack.OnSuccess(videoSource);
                return;
            }
            this.callBack.OnSuccess(videoSource);
        }
    }

    @SuppressLint({"CheckResult"})
    public void addMagnetsAllDebrid(List<String> list) {
        D4.a.addMagnetAllDebrid(list).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new j(this, 0), new A4.c(22));
    }

    public void addlink(String str) {
        VideoSource videoSource = new VideoSource();
        videoSource.streamUrl = str;
        videoSource.label = checkLinkLabel(str) + " - [EMBED]";
        addLink(videoSource);
    }

    public final void c(final int i2) {
        D4.a.getMagnetStatusAllDebrid(i2 + "").observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer() { // from class: flix.com.vision.processors.english.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                m mVar = m.this;
                mVar.getClass();
                JsonObject asJsonObject = ((JsonElement) obj).getAsJsonObject();
                String asString = asJsonObject.get("status").getAsString();
                if (asString == null || !asString.equals(FirebaseAnalytics.Param.SUCCESS)) {
                    return;
                }
                if (AllDebridCommon.f15804b == null) {
                    AllDebridCommon.f15804b = new HashSet();
                }
                AllDebridCommon.f15804b.add(i2 + "");
                JsonArray asJsonArray = asJsonObject.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject().get("magnets").getAsJsonObject().get("links").getAsJsonArray();
                for (int i7 = 0; i7 < asJsonArray.size(); i7++) {
                    JsonObject asJsonObject2 = asJsonArray.get(i7).getAsJsonObject();
                    if (asJsonObject2.get("size").getAsLong() > 1705604) {
                        mVar.unlockLinkAllRebrid(asJsonObject2.get("link").getAsString());
                    }
                }
                if (mVar.ids.size() > 0) {
                    mVar.c(mVar.ids.pop().intValue());
                }
            }
        }, new A4.c(22));
    }

    public String checkLinkLabel(String str) {
        String str2;
        String domainName = getDomainName(str);
        int nextInt = new Random().nextInt(10);
        if (nextInt == 1) {
            try {
                str2 = "480p - [" + domainName + "]";
            } catch (Exception e3) {
                e3.printStackTrace();
                str2 = "480p - [" + domainName + "]";
            }
        } else if (nextInt > 3) {
            try {
                str2 = "720p - [" + domainName + "]";
            } catch (Exception e7) {
                e7.printStackTrace();
                str2 = "720p - [" + domainName + "]";
            }
        } else {
            try {
                str2 = "1080p - [" + domainName + "]";
            } catch (Exception e8) {
                e8.printStackTrace();
                str2 = "1080p - [" + domainName + "]";
            }
        }
        if (str.contains(".m3u8")) {
            str2 = A.i.B(str2, "[HLS]");
        }
        return str2.replace("OPENLOAD", "OLOAD");
    }

    public final void d(int i2, String str, String str2) {
        App.getInstance().getRequestQueue().add(new k(0, A.i.k("https://api.torbox.app/v1/api/torrents/mylist?id=", str2), new M(this, str, str2, i2, 4), new androidx.media3.exoplayer.source.chunk.a(9)));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getDomainName(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            java.lang.String r1 = "google"
            boolean r1 = r5.contains(r1)
            if (r1 != 0) goto L5f
            java.lang.String r1 = "blogspot"
            boolean r1 = r5.contains(r1)
            if (r1 == 0) goto L13
            goto L5f
        L13:
            r1 = 2
            java.net.URI r2 = new java.net.URI     // Catch: java.lang.Exception -> L2d
            r2.<init>(r5)     // Catch: java.lang.Exception -> L2d
            java.lang.String r2 = r2.getHost()     // Catch: java.lang.Exception -> L2d
            java.lang.String r3 = "www."
            boolean r3 = r2.startsWith(r3)     // Catch: java.lang.Exception -> L2b
            if (r3 == 0) goto L3f
            r3 = 4
            java.lang.String r2 = r2.substring(r3)     // Catch: java.lang.Exception -> L2b
            goto L3f
        L2b:
            r3 = move-exception
            goto L2f
        L2d:
            r3 = move-exception
            r2 = r0
        L2f:
            r3.printStackTrace()
            java.lang.String r3 = "/"
            java.lang.String[] r5 = r5.split(r3)     // Catch: java.lang.Exception -> L3b
            r2 = r5[r1]     // Catch: java.lang.Exception -> L3b
            goto L3f
        L3b:
            r5 = move-exception
            r5.printStackTrace()
        L3f:
            if (r2 != 0) goto L42
            goto L43
        L42:
            r0 = r2
        L43:
            java.lang.String r5 = "."
            boolean r5 = r0.contains(r5)
            if (r5 == 0) goto L5a
            java.lang.String r5 = "\\."
            java.lang.String[] r5 = r0.split(r5)     // Catch: java.lang.Exception -> L56
            int r2 = r5.length     // Catch: java.lang.Exception -> L56
            int r2 = r2 - r1
            r0 = r5[r2]     // Catch: java.lang.Exception -> L56
            goto L5a
        L56:
            r5 = move-exception
            r5.printStackTrace()
        L5a:
            java.lang.String r5 = r0.toUpperCase()
            return r5
        L5f:
            java.lang.String r5 = "GOOGLEVIDEO"
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.processors.english.m.getDomainName(java.lang.String):java.lang.String");
    }

    public String getEvalScriptFromHTML(j6.h hVar) {
        try {
            Elements elementsByTag = hVar.getElementsByTag("SCRIPT");
            for (int i2 = 0; i2 < elementsByTag.size(); i2++) {
                String bVar = elementsByTag.get(i2).toString();
                if (bVar.contains("function(p,a,c,k,e,d)")) {
                    return bVar;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @SuppressLint({"CheckResult"})
    public void getMagnetOffcloud(String str) {
        D4.a.addLinkOffcloud(str).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new c(this, str, 2), new A4.c(28));
    }

    public void getMagnetPremiumize(String str) {
        App.getInstance().getRequestQueue().add(new l(A.i.k("https://www.premiumize.me/api/transfer/directdl?apikey=", PremiumizeCommon.f15823e), new X4.a(28, this, str), new J0.g(8), str));
    }

    @SuppressLint({"CheckResult"})
    public void getMagnetTorBox(String str) {
        D4.a.addMagnetTorbox(str).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new c(this, str, 1), new A4.c(27));
    }

    public String getOriginalName(String str) {
        try {
            String str2 = str.split(RemoteSettings.FORWARD_SLASH_STRING)[r4.length - 1];
            if (!str2.contains("magnet")) {
                return str2;
            }
            String[] split = str2.split("=");
            return split.length > 2 ? split[2].replace("&tr", "") : str2;
        } catch (Exception unused) {
            return null;
        }
    }

    public void handleException() {
    }

    public String removeSpecialChars(String str) {
        return str.replaceAll("[^a-zA-Z0-9]", "");
    }

    public void unlockLinkAllRebrid(String str) {
        D4.a.unlockLinkAllDebrid(str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new j(this, 1), new A4.c(22));
    }

    public void unrestrictLinkOffcloud(String str) {
        getMagnetOffcloud(str);
    }

    @SuppressLint({"CheckResult"})
    public void unrestrictLinkTorbox(String str) {
        D4.a.addWebLinkTorbox(str).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new c(this, str, 0), new A4.c(25));
    }
}
