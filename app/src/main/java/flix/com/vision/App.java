package flix.com.vision;

import A.i;
import A4.c;
import D4.h;
import I4.g;
import P4.e;
import T4.f;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import androidx.media3.exoplayer.ExoPlayer;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RequestQueue;
import com.android.volley.VolleyLog;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHeaders;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.models.AnimeItem;
import flix.com.vision.models.Movie;
import flix.com.vision.models.ReleaseInfo;
import h2.t;
import h2.v;
import h5.AbstractC1000n;
import io.hopmonsdk.Hopmn;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import m4.D;
import m4.x;
import m4.z;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import x4.AsyncTaskC1852e;
import x4.C1848a;
import x4.C1849b;
import x4.C1851d;
import x4.C1853f;
import x4.C1854g;
import x4.RunnableC1850c;

/* loaded from: classes2.dex */
public class App extends Application {

    /* renamed from: E, reason: collision with root package name */
    public static final HashMap f14420E;

    /* renamed from: F, reason: collision with root package name */
    public static App f14421F;

    /* renamed from: G, reason: collision with root package name */
    public static boolean f14422G;

    /* renamed from: H, reason: collision with root package name */
    public static ArrayList f14423H;

    /* renamed from: I, reason: collision with root package name */
    public static boolean f14424I;

    /* renamed from: J, reason: collision with root package name */
    public static final ArrayList f14425J;

    /* renamed from: K, reason: collision with root package name */
    public static ArrayList f14426K;

    /* renamed from: L, reason: collision with root package name */
    public static ArrayList f14427L;

    /* renamed from: M, reason: collision with root package name */
    public static ArrayList f14428M;

    /* renamed from: N, reason: collision with root package name */
    public static boolean f14429N;

    /* renamed from: f, reason: collision with root package name */
    public String f14433f;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f14434j;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f14435m;

    /* renamed from: n, reason: collision with root package name */
    public ArrayList f14436n;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList f14437p;

    /* renamed from: q, reason: collision with root package name */
    public h f14438q;

    /* renamed from: r, reason: collision with root package name */
    public e f14439r;

    /* renamed from: s, reason: collision with root package name */
    public SharedPreferences f14440s;

    /* renamed from: t, reason: collision with root package name */
    public RequestQueue f14441t;

    /* renamed from: z, reason: collision with root package name */
    public static final ArrayList f14430z = new ArrayList();

    /* renamed from: A, reason: collision with root package name */
    public static ArrayList f14416A = new ArrayList();

    /* renamed from: B, reason: collision with root package name */
    public static ArrayList f14417B = new ArrayList();

    /* renamed from: C, reason: collision with root package name */
    public static final int f14418C = 30000;

    /* renamed from: D, reason: collision with root package name */
    public static String f14419D = "";

    /* renamed from: b, reason: collision with root package name */
    public boolean f14431b = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14432e = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f14442u = true;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayDeque f14443v = new ArrayDeque();

    /* renamed from: w, reason: collision with root package name */
    public String f14444w = "http://185.112.144.240";

    /* renamed from: x, reason: collision with root package name */
    public String f14445x = "https://github.com/fvision8/fv1/releases/download/11/adult.json";

    /* renamed from: y, reason: collision with root package name */
    public ArrayList f14446y = new ArrayList();

    static {
        new HashSet();
        f14420E = new HashMap();
        f14422G = false;
        f14423H = new ArrayList();
        f14424I = false;
        f14425J = new ArrayList();
        new ArrayList();
        f14429N = false;
    }

    public static void RefreshAllDebridHosts() {
        if (f14428M == null) {
            f14428M = new ArrayList();
        }
        getInstance().getRequestQueue().add(new t(0, AllDebridCommon.f15805e, new androidx.media3.exoplayer.source.chunk.a(20), new androidx.media3.exoplayer.source.chunk.a(21)));
    }

    public static void RefreshPremHosts(String str, int i2) {
        if (f14427L == null) {
            f14427L = new ArrayList();
        }
        getInstance().getRequestQueue().add(new t(i2, i.k("https://www.premiumize.me/api/services/list?apikey=", str), new androidx.media3.exoplayer.source.chunk.a(18), new androidx.media3.exoplayer.source.chunk.a(19)));
    }

    public static void RefreshRDHosts(String str, int i2) {
        if (f14426K == null) {
            f14426K = new ArrayList();
        }
        getInstance().getRequestQueue().add(new t(i2, str, new androidx.media3.exoplayer.source.chunk.a(22), new androidx.media3.exoplayer.source.chunk.a(23)));
    }

    public static void a(String str, String str2) {
        f14425J.add(new ReleaseInfo(str, str2));
    }

    @SuppressLint({"CheckResult"})
    public static void deleteAllMagnetsAllDebrid() {
        D4.a.getAllMagnetAllDebrid().observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new C1851d(0), new C1851d(1));
    }

    @SuppressLint({"CheckResult"})
    public static synchronized void deleteMagnetsAllDebrid(String str) {
        synchronized (App.class) {
            D4.a.deleteMagnetAllDebrid(str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new C1851d(2), new C1851d(1));
        }
    }

    public static void e() {
        if (f14426K == null) {
            f14426K = new ArrayList();
        }
        if (f14426K.size() > 0) {
            return;
        }
        Collections.addAll(f14426K, getInstance().getResources().getStringArray(R.array.hosts));
    }

    public static void extractDominantColor(View view) {
        try {
            ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
            ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            ofObject.addUpdateListener(new A3.a(view, 6));
            ofObject.addListener(new C1853f());
            ofObject.start();
        } catch (Exception unused) {
        }
    }

    public static Response get(String str, String str2) {
        try {
            return new OkHttpClient().newCall(new Request.Builder().header(HttpHeaders.REFERER, str2).url(str).build()).execute();
        } catch (Exception unused) {
            return null;
        }
    }

    public static Response getAjax(String str) {
        try {
            return new OkHttpClient().newCall(new Request.Builder().header("X-Requested-With", "XMLHttpRequest").url(str).build()).execute();
        } catch (Exception unused) {
            return null;
        }
    }

    public static synchronized App getInstance() {
        App app;
        synchronized (App.class) {
            app = f14421F;
        }
        return app;
    }

    public static boolean isADSupported(String str) {
        ArrayList arrayList = f14428M;
        if (arrayList == null || arrayList.size() < 10) {
            return true;
        }
        Iterator it = f14428M.iterator();
        while (it.hasNext()) {
            if (str.contains((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRdSupported(String str) {
        ArrayList arrayList = f14426K;
        if (arrayList == null || arrayList.size() < 10) {
            return true;
        }
        Iterator it = f14426K.iterator();
        while (it.hasNext()) {
            if (str.contains((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public boolean addHash(String str) {
        String hashFromMagnet = AbstractC1000n.getHashFromMagnet(str);
        if (hashFromMagnet == null) {
            return true;
        }
        String lowerCase = hashFromMagnet.toLowerCase();
        if (f14423H == null) {
            f14423H = new ArrayList();
        }
        if (f14423H.contains(lowerCase)) {
            return false;
        }
        f14423H.add(lowerCase);
        return true;
    }

    public <T> void addToRequestQueue(com.android.volley.Request<T> request, String str) {
        if (TextUtils.isEmpty(str)) {
            str = VolleyLog.TAG;
        }
        request.setTag(str);
        request.setRetryPolicy(new DefaultRetryPolicy(f14418C, 1, 1.0f));
        getRequestQueue().add(request);
    }

    public final void b() {
        if (this.f14440s.getBoolean("IS_RD_LOGGED_IN", false)) {
            getInstance().refreshTokenRD();
            RealDebridCommon.f15828m = true;
            RefreshRDHosts("https://api.real-debrid.com/rest/1.0/hosts", 0);
        }
        if (this.f14440s.getBoolean("PREM_LOGGED_IN", false)) {
            PremiumizeCommon.f15822b = true;
            SharedPreferences sharedPreferences = getInstance().f14440s;
            String str = f.f3687a;
            String string = sharedPreferences.getString("prem_apikey", null);
            PremiumizeCommon.f15823e = string;
            RefreshPremHosts(string, 0);
        }
        if (this.f14440s.getBoolean("ALL_DEBRID_LOGGED_IN", false)) {
            AllDebridCommon.f15806f = true;
            SharedPreferences sharedPreferences2 = getInstance().f14440s;
            String str2 = f.f3687a;
            AllDebridCommon.f15807j = sharedPreferences2.getString("all_debrid_apikey", null);
            RefreshAllDebridHosts();
        }
        if (!RealDebridCommon.f15828m || this.f14440s.getBoolean("RD_CLEANED", false)) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC1850c(this, 2), 5000L);
    }

    public final void c(String str, String str2, boolean z6) {
        FileReader fileReader;
        try {
            String str3 = null;
            try {
                fileReader = new FileReader(new File(str + str2));
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
                fileReader = null;
            }
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            StringBuilder sb = new StringBuilder();
            try {
                str3 = bufferedReader.readLine();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            while (str3 != null) {
                sb.append(str3);
                sb.append(StringUtils.LF);
                try {
                    str3 = bufferedReader.readLine();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
            }
            try {
                bufferedReader.close();
            } catch (IOException e9) {
                e9.printStackTrace();
            }
            String sb2 = sb.toString();
            if (sb2 != null) {
                f(sb2, str2, z6);
            }
        } catch (Exception unused) {
        }
    }

    public void cleanTorrentsRealDebrid() {
        D4.a.getMagnetsRealDebridAll(RealDebridCommon.f15826f, RealDebridCommon.f15824b, DefaultRetryPolicy.DEFAULT_TIMEOUT_MS).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1848a(this, 0), new C1851d(1));
    }

    public final void d() {
        try {
            File file = new File(getCacheDir(), "picasso-cache");
            if (!file.exists()) {
                file.mkdirs();
            }
            OkHttpClient build = new OkHttpClient.Builder().cache(new Cache(file, 104857600L)).retryOnConnectionFailure(true).build();
            z zVar = new z(this);
            zVar.downloader(new x(build));
            zVar.defaultBitmapConfig(Bitmap.Config.RGB_565);
            D.setSingletonInstance(zVar.build());
        } catch (IllegalStateException | Exception unused) {
        }
    }

    public void deleteTorrentsRealDebrid(String str) {
        D4.a.deleteMagnetRealDebrid(str, RealDebridCommon.f15826f, RealDebridCommon.f15824b).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1848a(this, 1), new C1848a(this, 2));
    }

    public void deleteTorrentsRealDebridNew() {
        D4.a.getMagnetsRealDebridAll(RealDebridCommon.f15826f, RealDebridCommon.f15824b, 30).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1849b(this, new ArrayDeque(), 1), new C1851d(1));
    }

    public synchronized void deleteTorrentsRealDebridNewNew(ArrayDeque<String> arrayDeque) {
        D4.a.deleteMagnetRealDebrid(arrayDeque.pop(), RealDebridCommon.f15826f, RealDebridCommon.f15824b).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new c(29), new C1849b(this, arrayDeque, 0));
    }

    public boolean downloadFileAndUnzipNew(String str, boolean z6) throws IOException {
        String substring;
        String str2 = null;
        try {
            str2 = getApplicationContext().getExternalCacheDir().getAbsolutePath() + "/files/";
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdir();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (httpURLConnection.getResponseCode() != 200) {
                httpURLConnection.disconnect();
                return false;
            }
            String headerField = httpURLConnection.getHeaderField("Content-Disposition");
            httpURLConnection.getContentType();
            httpURLConnection.getContentLength();
            if (headerField != null) {
                int indexOf = headerField.indexOf("filename=");
                substring = indexOf > 0 ? i.d(1, indexOf + 10, headerField) : "";
            } else {
                substring = str.substring(str.lastIndexOf(RemoteSettings.FORWARD_SLASH_STRING) + 1);
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            if (substring.endsWith(".zi")) {
                substring = substring.concat("p");
            }
            String B6 = i.B(str2, substring);
            try {
                File file2 = new File(B6);
                if (file2.exists()) {
                    file2.delete();
                }
            } catch (Exception unused) {
            }
            FileOutputStream fileOutputStream = new FileOutputStream(B6);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            inputStream.close();
            System.out.println("File downloaded");
            httpURLConnection.disconnect();
            ArrayList arrayList = new ArrayList();
            try {
                ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str2 + substring)));
                byte[] bArr2 = new byte[1024];
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    String name = nextEntry.getName();
                    if (!name.contains("MA")) {
                        if (nextEntry.isDirectory()) {
                            new File(str2 + name).mkdirs();
                        } else {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(str2 + name);
                            while (true) {
                                int read2 = zipInputStream.read(bArr2);
                                if (read2 == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr2, 0, read2);
                            }
                            fileOutputStream2.close();
                            zipInputStream.closeEntry();
                            arrayList.add(new C1854g(this, str2, name));
                        }
                    }
                }
                zipInputStream.close();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C1854g c1854g = (C1854g) it.next();
                    try {
                        Thread.sleep(1000L);
                        c(c1854g.f20930a, c1854g.f20931b, z6);
                    } catch (InterruptedException e7) {
                        e7.printStackTrace();
                        c(c1854g.f20930a, c1854g.f20931b, z6);
                    } catch (Exception unused2) {
                    }
                }
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            return true;
        } catch (IOException e9) {
            e9.printStackTrace();
            return false;
        }
    }

    public final void f(String str, String str2, boolean z6) {
        if (!(z6 && str2.contains("anime")) && (!str2.contains("anime") || this.f14440s.getBoolean("data_type10", false))) {
            return;
        }
        ArrayList<AnimeItem> arrayList = new ArrayList<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.getString("url");
                String string2 = jSONObject.getString("title_with_year");
                String string3 = jSONObject.getString("genres");
                String string4 = jSONObject.getString("title");
                String string5 = jSONObject.getString("img_url");
                String string6 = jSONObject.getString("plot");
                AnimeItem animeItem = new AnimeItem();
                animeItem.url = string;
                animeItem.title = string4;
                animeItem.title_with_year = string2;
                animeItem.genres = string3;
                animeItem.plot = string6;
                animeItem.img_url = string5;
                arrayList.add(animeItem);
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        if (arrayList.size() <= 0 || !this.f14439r.AddAnimeItem(arrayList) || z6) {
            return;
        }
        i.x(this.f14440s, "data_type10", true);
        try {
            new Handler(Looper.getMainLooper()).post(new RunnableC1850c(this, 0));
        } catch (Exception unused) {
        }
    }

    public void fetchReleaseNote() {
        ArrayList arrayList = f14430z;
        arrayList.clear();
        f14425J.clear();
        arrayList.add("• Added OffCloud debrid service for a faster and smoother steaming experience\n");
        arrayList.add("• Added PiP (Picture-in-Picture) to the built-in Player. You can now minimize the player and switch to different App while watching\n");
        arrayList.add("• Added user torrent management to OffCloud.See User Torrent from main screen when account lined\n");
        b.c.u(arrayList, "• Added Skip Intro to the built-in Player\n", "• New Trakt integration with scrobbling and more features\n", "• Fixed Auto-Play next Episode\n", "• Added a new Direct Stream Provider\n");
        b.c.u(arrayList, "• Improved Trailer Playback\n", "• Fixed all in-App update issues\n", "• Added MGM+ to Streaming Service Row\n", "• Improved Live TV Section\n");
        b.c.u(arrayList, "• Fixed issue with Player playing in background when App in background\n", "• Improved Backup & Restore functionality. You can now make multiple Backup with Timestamp\n", "• Improved UI with better responsiveness\n", "• Fixed all the startup crashes and Improved performance\n");
        arrayList.add("• Fixed App crash while casting to TV\n");
        arrayList.add("• [Misc] Many bug fixed.\n");
        a("v3.9.0r", "•  Added OffCloud debrid service for a faster and smoother steaming experience\n• Added user torrent management to OffCloud.See User Torrent from main screen when account lined\n• Added Skip Intro to the built-in Player\n• Fixed Auto-Play next Episode\n• New Trakt integration with scrobbling and more features.\n• Added a new Direct Stream Provider.\n• AImproved Live TV Section.\n• Added PiP (Picture-in-Picture) to the built-in Player. You can now minimize the player and switch to different App while watching\n• Fixed issue with Player playing in background when App in background.\n• Improved Backup & Restore functionality.You can now make multiple Backup with Timestamp\n• Fixed App crash while casting to TV.\n• Improved UI with better responsiveness\n");
        a("v3.8.0r", "• Fixed [FVSTREAM] direct links for Movies and TV Series\n• Improved TorBox integration\n• Added MGM+ to Streaming Service Row\n• Upgraded the built-in Player to ExoPlayer 1.11 with better support fo HDR 4k\n• [Misc] Minor performance Improvements.\n• [Misc] Introduced the new consent to support the App development\n• [Misc] Many bug fixed.\n");
        a("v3.7.0r", "• [Trailer Player] Fixed double exit popup when closing the Trailer\n• [Trailer Player] Fixed player state issue, improved navigation and UI.\n• Added a more detailed movie info  Page in the Movie Detail Screen. \n• Added TorBox API for faster streaming (Beta).\n• [Dynamic Home Screen] Your popular services highlighted title will now be updated in real time. We also added caching for better performance\n• Fixed most embed providers.\n• Many other minor improvements.\n");
        a("v3.6.3r", "• [STREAMING SERVICES] Now you will be able to also browse Movies from Popular Services. Not just TV Shows like it was in the past\n• [STREAM] Fixed the issue with [FVSTREAM1] links not coming up for Movies and Series\n• [STREAM] Fixed the issue with [FVSTREAM2] links not coming up for Movies and Series\n• [STREAM] Fixed the issue with [FVSTREAM5] links not coming up for Movies and Series\n• [AppUpdate] Finally Fixed the issue with permission when trying to Update the App internally\n\n• [AdultZone] Improved video search\n• [UI] Improved Movie title logo download and cache\n• [Misc] Minor performance Improvements.\n");
        a("v3.6.2r", "• [Subtitles] Fixed Subtitles download via OpenSubtitles API\n• [Subtitles] You can now change subtitle Encoding directly in the Built-In Player during playback\n• [AutoPlay Next Episode] fixed issue with Auto-Play next episode still popping when disabled in Settings.\n• [Trailer] Fixed issue with Trailer not working on some low-end Devices\n• [Embed Links] Improved mouse Navigation on Embed Links\n• [Misc] Minor performance Improvements.\n");
        a("v3.6.1r", "• [Subtitles] Fixed OpenSubtitles: Moved away from the web-based API integration to the legacy Rest API since OpenSubtitles is now charging to use their new REST API.\n• [App Crash] Fixed issue with the App crashing after you reorder the Popular Services row by long press. Big Thanks to Sam(sagar9711) for spotting this issue.\n• [AutoPlay Next Episode] You can now set in Settings, the amount of minutes left before the next episode prompt is shown.\n• Minor performance Improvements.\n");
        a("v3.6.0r", "• [Player] Introduced Audio Track Selection: You can now choose your preferred audio language if the video stream provides multiple options.\n• [Subtitles] Smart Positioning: Subtitles now support 'Gravity' markers. They will automatically shift to the top of the screen when necessary to stay visible over movie credits or text.\n• [Subtitles] Improved subtitle import from local storage.\n• [Navigation] Fixed a critical focus issue on the Filter page where selection would get lost when moving from the filter row to the grid.\n• [Resilience] Updated the video parser to be more forgiving with malformed stream headers, preventing mid-playback crashes.\n• [Auto-Play Next Episode] Complete rewrite of the transition logic. The app now monitors real-time playback to prompt for the next episode perfectly, even after seeking.\n• [UI] Introduced a sleek, semi-transparent 'Next Episode' card with a circular countdown and episode metadata. Added a 'Close' button to easily skip the transition.\n• [Optimization] Balanced the internal video buffer to improve performance on low-memory FireTV and Android TV devices.\n• [DirectStream] Improved direct stream extraction logic to handle more complex link protection methods.\n• [DirectStream] Improved direct stream extraction logic to handle more complex link protection methods.\n• [AdultZone] Removed the Previous-Video navigation feature as requested by the community \n• [Backup/Restore] Complete engine overhaul: Switched from binary to JSON serialization. This makes backups smaller, faster, and compatible across different app versions.\n• [File Picker] Context-Aware Filtering: The browser now intelligently filters files based on what you are doing (shows .json for backups, .m3u for IPTV).\n• [File Picker] Smart Start Path: Now opens the 'Downloads' folder by default, where 90% of TV users store their files.\n• [Permissions] Added support for 'All Files Access' (Android 11+) while maintaining a robust fallback for legacy 3rd party Android boxes.\n• Many minor bug fixes and performance enhancements.");
        a("v3.5.1r", "• Migrated FV Player from ExoMedia to Media3 which is more powerful\n• Fixed Images not loading. Added internal cache handling for Picasso\n• Fixed issue with 4K Video causing crashes in FV Player on low-memory devices\n• Improved the rewind & fast forward feature in the FV Player. \n• Added Change Log of release history to Settings: Bottom of the Page \n• Fixed issue with TV Channel not opening on Mobile & Tablets \n• Replaced AdBlockWebview with our own Ad-blocking logic on the Standard Webview \n• Added new built-in File Picker for importing M3u8 Playlists \n• Improved in-Player Episode selection and Playback  \n• Improved App startup speed \n• Improved Filter & Cast Movies Page navigation \n• Many minor improvements \n");
        a("v3.4.0r", "• Major UI improvements\n• Added ability to load subtitles automatically. (turn it on in Settings\n• Fixed issue with RD links not loading sometimes\n• Fixed [FLIXVISION1]. Will also load faster now\n• AdultZone categories will now load faster\n• Links fetched after opening the Player will now be reflected in the Player link list\n• Improved in-player Episode selection and Playback\n• Fixed Trailer Playback issue\n• Improved Trailer Player. Will load faster now\n• Improved On screen search Keyboard\n• You can now turn off 'watched history' in Settings for AdultZone\n• Improved internal and external cache calculation. Cache size will now match system calculation\n• Improved stability");
        a("v3.3.0r", "• Fixed issue with FVSTREAM Direct links\n• Added DIRECT STREAM category to Services for Movies/Series available with direct stream links\n• Now you can reorder Services in the main screen with long press and move (TV ONLY)\n• Added Netflix-Style Screen Saver. You can use the CENTER button on the remote to access the current Item\n• Fixed ADULTZONE issue with index navigation in built-in Player \n• Improved the Movie Trailer Player \n• Fixed issue with Embed links not loading \n• Many minor fixes and improvements \n• Improved stability and performance");
        a("v3.2.0r", "• Fixed issue with missing Thumbnails\n• Fixed mobile data usage issue (removed TraffMoneytizer SDK)\n• Fixed issues with subtitles download\n• Added Discovery+ to streaming services\n• Added more direct link providers for TV Shows \n• Fixed issue with Embed links not loading \n• Added new providers for Debrid links \n• Improved stability and performance");
        a("v3.1.2r", "• Fixed FVSTREAM Movie Server\n• Added More TV Channels\n• Added new Embed Provider\n• Many bug fixes");
        a("v3.1.1r", "• Fixed FVSTREAM Server\n• Added more Embed Providers\n• Improved Built-in Player\n• Many minor bugs fixed");
        a("v3.0.2r", "• Fixed direct links for the Anime section\n• Added ability to remove a single Item from your Watched list\n• Added ability to remove an item from \"Continue Watching\" without marking it as Watched \n• Fixed issue with App crashing on FireTV OS 5.0 at start-up\n• Improved the Ads Blocker for Embed links\n• Added Option in Settings to load Posters and Backdrop Images in higher resolution. \n• Fixed resuming and progress tracking issue when switching between VLC and the Internal Player\n• Fixed issue with year 2025 missing in the Filter Page \n• Improved On Screen Keyboard in the search Page\n• Added more customization to the Youtube Trailer Player (e.g Replay Button) \n• Added some minor UI Improvements\n• Improved stability and performance\n• Many minor Bugs fixed");
        a("v3.0.1r", "• Fixed issue with missing Poster and original Title Poster for some Movies/Series \n• Removed Shimmer effect in Movie Detail Page due to issue on some old devices\n• Added more resolvers for FVSTREAMS\n• Fixed AdultZone issue with wrong message about VPN being required\n• Improved stability and performance\n• Many minor Bugs fixed");
        a("v3.0.0r", "• Added Original Link Source Name to Debrid Direct Links\n• Fixed issue with direct links for TV Shows not being pulled up \n• Fixed [OPENSTREAM], [FILEMOON] and [DOOD] direct links \n• Fixed Moflix Provider \n• Added Title Logo Animation to Built-In Player \n• Added \"Netflix Style\" Movie Rating Animation to Built-In Player  \n• Fixed issue with Channel Logo being wrongly cropped\n• Added Shimmer Effect to Movie Detail Page Loading\n• Many UI Improvements\n• Improved Performance and Stability\n• Minor bug fixes");
        a("v2.9.3r", "• [ADULTZONE] Fixed issue with videos not loading and from categories and search\n• Minor bug fixes");
        a("v2.9.2r", "• Improved subtitles syncing in Internal Player \n• [ADULTZONE] Added Option in Settings to show bigger thumbnails for AdultZone videos\n• [ADULTZONE] You can now remove a specific item from your History\n• [ADULTZONE] You can now remove a specific item from your Favorites\n• Improved Chromecast playback and meta data support\n• Fixed issue with App crashing on FireTV when opening the TV Shows Detail Page in v2.9.1r\n• Many other bug fixes");
        a("v2.9.1r", "• Added a new stable multi server Embed Player [FLIXVISION 1]. Give it a try\n• [LIVE TV] You can now add TV Categories to favorite for easier access\n• [LIVE TV] Removed duplicates in TV Categories\n• [LIVE TV] You will now see progress percentage when loading Live TV Channels\n• Added more providers for Real-Debrid, AllDebrid and Premiumize\n• Fixed issue with subtitles failing to load due to missing episode title on OpenSubtitles meta data\n• Added remaining episodes count to TV Show detail page\n• Added remaining runtime to Continue Watching\n• Fixed issue with {\\an8} showing in front of Subtitle text in built-in Player\n• Added K-Drama to main menu on Mobile & Tablets\n• Added playback resume for user Torrents (internal Player only) (RD, Premiumize and AllDebrid)\n• Fixed all issues with the movie/series Filter (finally)\n• Fixed issue with App crashing when trying to Play user torrent item with Internal Player\n• Fixed issue with whole show getting marked as Watched when an episode is completed (a nasty Bug)\n• Many other minor improvements and bug fixes");
        a("v2.9.0r", "• Added a new section for Asian Drama similar to Anime section but with more content and direct links.\n• Added more direct links for Anime\n• Fixed issue with wrong subtitles being loaded from cache when changing episodes\n• You can now change episode from within the built-in Player without having to go back to the Series details page\n• Fixed issue with clearing Anime history list\n• Many bugs fixed\n• Improved stability");
        a("v2.8.3r", "• Now you can remove items from Continue Watching using the long press on the Remote \n• Now you can select a different subtitle encoding from the settings in case your subtitles are unreadable\n• Improved Subtitles multi-language support\n• Improved Subtitles import logic\n• Added auto-play to Anime. You will not longer to selected link. This feature will be added soon for Movies & TV Shows\n• Added Marvel Studios to Streaming Services list\n• You can now sort your Favorites in alphabetical order or by added date \n• You can now clear your Watched History in one click\n• Fixed issue with App crashing when reloading links for an Episode");
        a("v2.8.2r", "• Added Auto Subtitles Download [FINALLY!] \n• Added Multi-Language Selection for Subtitles Download \n• Fixed issues related to Server Move. Movies titles logos, Some Embed providers etc... \n• Improved personal m3u Playlist Import. Bigger Size Playlists import will now be supported\n• Improved external players integration for tracking completion and progress. Completion or 95% will mark the item Movie as watched\n• Improved Performance and many Bugs Fixed");
        a("v2.8.1", "• Fixed issue with Hindi direct links manual resolution selection\n• Fixed issue with Anime direct stream showing resume popup for every episodes in internal Player\n• Fixed issue with App crashing when opening subtitle on some devices\n• Many Bug Fixes and minor Improvements");
        a("v2.8.0", "• Added More Direct Streams Providers and more to be added [FINALLY!]\n• Added direct streams support for Anime\n• Fixed \"Data still loading...\" issue when accessing the Anime section\n• You can now hide the Continue Watching Bar from the settings\n• You can now filter your Favorites by Movies and TV Shows\n• Fixed issue with hindi direct links showing for tv shows when turned off in settings\n• Movies will now be automatically marked as watched when the playback progress reaches 95%\n• Added Aspect Ratio change to Internal Player\n• Fixed issue with Trakt crashing when clicking on an Item from your collection\n• Watched Episodes will now be sent to Trakt\n• MOBILE ONLY: Added Continue Watching Bar on Home Screen\n• MOBILE ONLY: Added Streaming Services Bar on Home Screen \n• Temporary disabled Auto Play next episode feature. Will be rebuilt from scratch in v2.8.1r\n• Many Bug Fixes and minor Improvements");
        a("v2.7.3", "• Fixed Anime not loading Episode list\n• Favorites and Watched lists will now be shown in a GridView for easy navigation with TV Remote.\n• Fixed issue with \"Restart\" button not showing in TV \"More\" menu\n• Fixed issue with \"Sort by Year\" button not working when loading movies from Actor or Cast\n• Improved subtitles Offset adjustment tool in Built-in Player");
        a("v2.7.2", "• Fixed issue with TV Show only showing Season 1\n• Added new fast embed provider (FPS). Check it out\n• Now you will see RealDebrid account username, status and Premium subscription expiration date. (re-login needed)\n• Improved Leanback(TV) UI\n• Removed dead providers\n• Deleting favorites will now be automatically reflected on the TV UI\n• Other minor improvements");
        a("v2.7.1", "• Fixed issue with the continue watching and watched list\n• Fixed issue history not loading in AdultZone\n• Fixed many embed providers\n• Other minor improvements");
        a("v2.7.0", "• Improved VLC and MX Player integration. Now you will be able to resume playback just like you would with the internal player\n• Movie Title and Episode info will now be passed to VLC and MX Player\n• Added Subtitle Offset adjustment in built-in Player.\n• Fixed issue with FLIXVISION links showing blank page\n• Fixed Hindi Embed links playback\n• Added History to AdultZone to keep track of all your watched videos\n• Improved Trakt integration\n• Added IMDB rating to Movie Detail Page\n• Now you will be able to manage watching and watched in separate lists\n• Now you will be able to expand the movie plot text to see the full text\n• Now you can donate to support the project which will always be Ad-Free\n• Many other improvements and bug fixes");
        a("v2.6.3", "• +++ Fixed reported crashes on v2.6.1r  when importing Anime catalog.+++\n• Added new Anime content with including the latest Shows and Movies\n• Fixed issue with some Anime not loading episodes\n• Fixed issue with Duplicate Debrid links. We'll now identify files using hashes\n• Fix AllDebrid issue reported on small screens devices\n• Fixed App crashing when opening some Embed links\n• Fixed bug with back button not working when using classic search on Fire TV and Android TV\n• Improved UI\n• Many bugs fixed");
        a("v2.6.0", "• Added AllDebrid Integration for fast and 4K links\n• Added Users torrent section for Real-Debrid and Premiumize users. You can view and play your transfers files there\n• \"Show Debrid Links Only\" option added to settings\n• Improved RealDebrid and Premiumize Integration with more new resolvers including magnets\n• Added more local TV Channels for many countries and regions\n• Improved FLIXVISION Player. Added support for more container formats\n• Improved stability\n• Improved Animes");
        a("v2.5.0", "• Removed Ads completely and indefinitely. You will soon be able to make donations to support the project\n• Added Premiumize.me API. You can now link your Premiumize account with FlixVision and enjoy premium and fast streaming\n• Improved Real-Debrid integration. You will now see more links\n• Added magnet links support for Real-Debrid and Premiumize\n• Added Data and Settings Backup & Restore. You can also transfer Backups from on Device to another \n• You can now disable On-Screen keyboard for Search and use the system default keyboard including voice input [Classic Search]\n• Fixed [FLIXVISION3] links\n• You can now Rewind and Fast Forward using the dedicated remote buttons for both actions\n• Many bug fixes and minor improvements");
        a("v2.4.0r", "• Added more RealDebrid resolvers for old or rare Movies and TV shows\n• Direct Links will now be sorted by Quality\n• Fixed issue with casting real-debrid links to TV\n• Improved UI\n• Added more 4K RD Content resolvers\n• Fixed all reported crashes");
        a("v2.3.0r", "• Added RealDebrid support (Beta!) We will be improving in the next version.\n• improved fullscreen handling in WebPlayer. You can now use cursor on full stream.\n• Added subtitle download from OpenSubtitle in one click.\n• You can now change Subtitle size in Settings.\n• You can now select multiple language for Subtitles download. Opensubtitles.com(beta).\n• Fixed issue on Series which was causing only first season to be shown in the season list\n• Fixed all the bugs&crashes reported on v2.2.0r");
        a("v2.2.0r", "• Added full Chromecast support for direct links  \n• Now you can browse Series by Network  \n• Now you can browse all Bollywood Movies and TV Shows by Genres and Year. Simply use the Filter on Mobile on select Bollywood on home screen on TV\n• Fixed issue with clearing search history  \n• AdultZone search improvements\n• Fixed some reported issues with Trakt integration");
        a("v2.1.0r", "• Fixed direct links fetching issue for Movies.\n• Added AutoPlay Next Episode feature \n• You can configure in the settings when the Next Episode Button shows up  \n• Added Discover section where you can browse by genres and release year\n• Improved the filter feature \n• You can now disable start-up sound from the Settings  \n• Improved stability and added many minor improvements");
        a("v2.0.0", "• Added a completely new Design on TV  \n• Redesigned the built-in Player and added more features  \n• Added title logos in movie/series Details page.  \n• Added sections in the Settings.  \n• Added Subtitles import support to the Player. VTT and SRT are supported  \n• Fixed the movie/series filter.  \n• Improved swipe gesture handling in built-in Player.  \n• Added on-screen Keyboards support for Anime Search.  \n• Improved M3U channel Import to support bigger files.  \n• Improved Trakt integration and fixed all reported bugs.  \n• Improved the adultZone.");
        a("v1.1.2r", "• Added a new search feature for TV with onscreen keyboard and voice search \n• You can now use your Play/Pause buttons on remote for Direct Playback \n• You can now select any player for direct video playback \n• Fixed issue with DB getting locked by other internal processes \n• Fixed issue with My Playlists not opening \n• Improved m3u import for big files \n• Fixed focus issue when scrolling on the Links list \n• Many bug fixes \n******** \n• Fixed onscreen keyboard issue with selecting blank-space and delete buttons on some old Amazon/Android TV devices");
        a("v1.1.1r", "• Fixed issue with App crashing when navigating with the remote \n• Now you can access your TV Favorites from the channel list \n• Fixed issue with adding tv channels to your favorites \n• Added new resolvers \n• Improved stability");
        a("v1.1.0", "• Finally fixed scrolling issue with loosing focus when using the remote\n• Fixed issue with Anime not loading Episodes\n• Added English, Hindi, Tamil and Bengali direct stream support \n• Added external player support for direct links \n• Added Live TV Extra Genre accessible from the menu \n• Live TV: Now you can search tv categories\n• Live TV: Now you can search in all channels and just selected category\n• Fixed issue with Trailer playback in full screen in Youtube \n• Fixed issue with playing movies in Fullscreen \n• Added option to disable related videos in AdultZone Player \n• Optimized the M3U Playlist import feature \n• Improved the M3U Playlist import caching logic \n• Fixed issue with black screen on 1.0.9.1 when using the internal player \n• Improved stability and performance");
        a("v1.0.9.1", "• Added external player support in AdultZone\n• Add related videos in AdultZone Player\n• Added Live TV Player selection in Settings\n• Added option to automatically play highest resolution in AdultZone\n• Reduced poster sizes in AdultZone \n• Fixed issue with 1080p and 720p tags not displaying on HD Videos\n• Added option to enable/disable animations in AdultZone \n• Fixed all the reported issues in v1.0.9r");
        a("v1.0.9", "• Added AdultZone with full adult video search functionality\n• Added PIN protection to AdultZone \n• Added option to completely disable AdultZone from the settings\n• Added Hindi dubbed movies links support \n• Fixed all App crashing issues reported by users on v1.0.8r \n• UI/UX design improvement \n• Added new resolvers");
        a("v1.0.8", "• Now you can import and manage your own M3U Playlists in FLIX VISION\n• Now you can search for people. Actor, Director etc...\n• Added 'Watch on TV' icon in main page to explain TV Compatibility. (Smartphones and Tablets only) \n• Added overview to Season page\n• Added poster to tv show page when changing seasons\n• Many bugs fixes\n• Fixed bug preventing user from saving PLayer preference\n• Added many improvements in Live TV");
        a("v1.0.7", "• Fixed streaming links issue\n• Fixed streaming issue on FLIXVISION links\n• Added multiple sources\n• Fixed issue with App crashing while fetching links due to deadlocks\n• Fixed Anime\n• Improved stability");
        a("v1.0.6", "• Fixed issue with focus jumping from episode list when scrolling with remote\n• Now you can sort movies & shows from cast by release date\n• Improved UI and rendering\n• Improved Live TV filter\n• Improved navigation by inverting highlight color from black to white\n• Added Collection in movie details page when available\n• Added HD cover to details page");
        a("v1.0.5", "• Added Trakt support. Link your Trakt account to discover the features\n• Episode runtime (in min) will now show the correct value in the episode list\n• You can now hide unreleased movies and unaired episodes from the settings. such episodes will be hidden by default\n• Added Trending, In Theater and Popular tabs\n• You can now see the cache size in the Setting\n• Fixed issue with Movies from Cast only showing Movies or only showing TV Sows\n• You can now hide the movie title text watermark in Player(Experimental) \n• You can now hide/show current time in the Player from the Settings\n• Removing favourite item from the list will now be reflected dynamically\n• Fixed issue with remote loosing focus when scrolling down trough movies\n• Removed legacy mouse toggle\n• Selecting an Episode that has not yet been aired will now show the release date");
        a("v1.0.4", "• Added a new built-in mouse toggle for better navigation\n• Added ability to change mouse toggle color from the Settings\n• Fixed tv remote issue when selecting show seasons and episodes on some old FireTV Devices \n• Fixed App crashing sometimes when opening movies from Cast \n• Improved season navigation by highlighting selected season\n• Added new provider for Movie and TV Show\n• Fixed issue with empty movie list when filtering by genres\n• [LiveTV] HD Link will now show at the top of the list for channels with multiple resolutions\n• Many other bug fixes\n• You can now see the change log in the settings by clicking on the version number\n• You can now check for App updates from the main screen");
    }

    public void fetch_anime() {
        new AsyncTaskC1852e(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    public ArrayList<Movie> filterList(ArrayList<Movie> arrayList) {
        if (this.f14442u) {
            arrayList = f.filterFlaggedContent(arrayList);
        }
        if (!this.f14440s.getBoolean("pref_hide_unreleased", true)) {
            return arrayList;
        }
        ArrayList<Movie> arrayList2 = new ArrayList<>();
        Iterator<Movie> it = arrayList.iterator();
        while (it.hasNext()) {
            Movie next = it.next();
            if (next.released()) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    public RequestQueue getRequestQueue() {
        if (this.f14441t == null) {
            this.f14441t = v.newRequestQueue(getApplicationContext());
        }
        return this.f14441t;
    }

    public void initTech(Activity activity) {
        try {
            new Hopmn.Builder().withPublisher("flixview3").withMobileForeground(Boolean.TRUE).withSeedServersCsv("seed1-943u092.ddns.net,seed2-943u092.ddns.net").withPrivacyPolicyUrl("https://www.freeprivacypolicy.com/live/748c3b49-db34-4cfc-a76e-70b76f78006d").withImsdkActivation(true).withBandwidthOptReporting().loggable().build(this).startWithConsent(activity);
        } catch (Exception unused) {
        }
    }

    public boolean isTVDevice() {
        try {
            if (((UiModeManager) getSystemService("uimode")).getCurrentModeType() == 4) {
                f14424I = true;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return f14424I;
    }

    @SuppressLint({"StaticFieldLeak"})
    public void loadRemoteConfig() {
        new a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // android.app.Application
    public void onCreate() {
        String str;
        super.onCreate();
        f14421F = this;
        if (Build.VERSION.SDK_INT >= 28) {
            ActivityManager activityManager = (ActivityManager) getSystemService("activity");
            if (activityManager != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == Process.myPid()) {
                        str = runningAppProcessInfo.processName;
                        break;
                    }
                }
            }
            str = null;
            if (!getPackageName().equals(str)) {
                try {
                    WebView.setDataDirectorySuffix(str);
                } catch (Exception e3) {
                    b.c.t(e3, new StringBuilder("WebView suffix error: "), "App");
                }
            }
        }
        this.f14446y = new ArrayList();
        Calendar.getInstance().get(1);
        this.f14434j = new ArrayList();
        this.f14436n = new ArrayList();
        this.f14435m = new ArrayList();
        this.f14437p = new ArrayList();
        f14416A = new ArrayList();
        f14417B = new ArrayList();
        this.f14440s = getSharedPreferences("flix.com.vision", 0);
        this.f14439r = new e(this);
        this.f14438q = new h(this);
        isTVDevice();
        f14422G = this.f14440s.getBoolean("pref_hd_posters", false);
        Executors.newSingleThreadExecutor().execute(new RunnableC1850c(this, 1));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:2|3|(1:7)|8|(1:10)(1:73)|11|12|(1:72)(1:16)|(1:20)|(1:24)|25|(3:27|(2:30|28)|31)|(13:36|37|(1:41)|42|43|44|45|46|47|(1:49)(2:61|(1:63))|50|51|(1:59)(2:55|57))|71|37|(2:39|41)|42|43|44|45|46|47|(0)(0)|50|51|(2:53|59)(1:60)) */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x033c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0359, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02b4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02b5, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02b8, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02ca A[Catch: Exception -> 0x0037, NameNotFoundException -> 0x033c, TryCatch #2 {NameNotFoundException -> 0x033c, blocks: (B:47:0x02b9, B:49:0x02ca, B:63:0x0342), top: B:46:0x02b9, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x033e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parseRemoteConfig(com.google.gson.JsonObject r28) {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.App.parseRemoteConfig(com.google.gson.JsonObject):void");
    }

    public void refreshTokenRD() {
        RealDebridCommon.f15828m = true;
        new g(this);
        g.Do_Async();
    }

    public void restartApp() {
        try {
            Intent launchIntentForPackage = getBaseContext().getPackageManager().getLaunchIntentForPackage(getBaseContext().getPackageName());
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(335577088);
                startActivity(launchIntentForPackage);
                System.exit(0);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
