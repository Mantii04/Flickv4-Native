package flix.com.vision.subtitles;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.CastAction;
import flix.com.vision.subtitles.SubDownloadExtended;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.lang3.StringEscapeUtils;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public class SubDownloadExtended {
    private static final int BUFFER_SIZE = 4096;
    private static final String CAPTCHA_INDICATOR = "captcha";
    private static final String DOWNLOAD_LINK_SELECTOR = "a[href*=download/sub]";
    private static final String DOWNLOAD_SUB_INDICATOR = "download/sub";
    public static String SUB_PATH = "";
    private static final String TAG = "SubDownloadExtended";
    private static final String USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36";
    private static String captchaSolution;
    private static String finalDownloadLink;
    private static Boolean isWebViewInitialized = Boolean.FALSE;
    private static Context mContext;
    private static OkHttpClient mOkHttpClient;
    private static WebView mWebView;

    public static class SubDownloadWebViewClient extends WebViewClient {
        private SubDownloadWebViewClient() {
        }

        private String extractCaptchaImageUrl(WebView webView) {
            String[] strArr = {null};
            CountDownLatch countDownLatch = new CountDownLatch(1);
            new Handler(Looper.getMainLooper()).post(new g(webView, strArr, countDownLatch));
            try {
                countDownLatch.await(10L, TimeUnit.SECONDS);
            } catch (InterruptedException e3) {
                Log.e(SubDownloadExtended.TAG, "Interrupted while waiting for image URL: " + e3.getMessage());
            }
            return strArr[0];
        }

        private void extractDownloadLink(WebView webView, String str) {
            if (str == null || !str.contains(SubDownloadExtended.DOWNLOAD_SUB_INDICATOR)) {
                new Thread(new d(webView, 1)).start();
                return;
            }
            Log.i(SubDownloadExtended.TAG, "Extracted download link: ".concat(str));
            String unused = SubDownloadExtended.finalDownloadLink = str;
            SubDownloadExtended.downloadFileWithOkHttp(SubDownloadExtended.finalDownloadLink);
        }

        private String getCaptchaSolution(String str) {
            return "";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$extractCaptchaImageUrl$1(String[] strArr, CountDownLatch countDownLatch, String str) {
            if (str != null && !str.equals("null")) {
                strArr[0] = str.replaceAll("\"", "");
            }
            countDownLatch.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$extractCaptchaImageUrl$2(WebView webView, String str, final String[] strArr, final CountDownLatch countDownLatch) {
            webView.evaluateJavascript(str, new ValueCallback() { // from class: flix.com.vision.subtitles.e
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    SubDownloadExtended.SubDownloadWebViewClient.lambda$extractCaptchaImageUrl$1(strArr, countDownLatch, (String) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$extractDownloadLink$5(String str) {
            if (str == null || str.equals("null") || str.isEmpty()) {
                return;
            }
            String unescapeJava = StringEscapeUtils.unescapeJava(str);
            if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                unescapeJava = A.i.d(1, 1, unescapeJava);
            }
            org.jsoup.nodes.b first = g6.e.parse(unescapeJava).select(SubDownloadExtended.DOWNLOAD_LINK_SELECTOR).first();
            if (first == null) {
                Log.e(SubDownloadExtended.TAG, "Download Link not Found with selector  a[href*=download/sub]");
            } else {
                String unused = SubDownloadExtended.finalDownloadLink = first.attr("href");
                SubDownloadExtended.downloadFileWithOkHttp(SubDownloadExtended.finalDownloadLink);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$extractDownloadLink$6(WebView webView, String str) {
            webView.evaluateJavascript(str, new f(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$extractDownloadLink$7(WebView webView) {
            try {
                new Handler(Looper.getMainLooper()).post(new d(webView, 0));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$solveCaptcha$0(String str, WebView webView) {
            try {
                String unused = SubDownloadExtended.captchaSolution = getCaptchaSolution(str);
                if (SubDownloadExtended.captchaSolution == null || SubDownloadExtended.captchaSolution.isEmpty()) {
                    Log.e(SubDownloadExtended.TAG, "Captcha solution is null or empty");
                } else {
                    submitCaptchaSolution(webView, SubDownloadExtended.captchaSolution);
                }
            } catch (Exception e3) {
                Log.e(SubDownloadExtended.TAG, "Error solving captcha: " + e3.getMessage(), e3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$submitCaptchaSolution$3(String str) {
            if (str == null || !str.equals("true")) {
                Log.e(SubDownloadExtended.TAG, "Failed to submit captcha solution.");
            } else {
                Log.i(SubDownloadExtended.TAG, "Captcha solution submitted successfully.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$submitCaptchaSolution$4(WebView webView, String str) {
            webView.evaluateJavascript(str, new f(1));
        }

        private void solveCaptcha(WebView webView) {
            String extractCaptchaImageUrl = extractCaptchaImageUrl(webView);
            if (extractCaptchaImageUrl == null || extractCaptchaImageUrl.isEmpty()) {
                Log.e(SubDownloadExtended.TAG, "Could not extract Captcha URL!");
            } else {
                new Thread(new g(this, extractCaptchaImageUrl, webView)).start();
            }
        }

        private void submitCaptchaSolution(final WebView webView, String str) {
            final String l7 = A.i.l("(function() {   var captchaInput = document.getElementById('captcha_input');  var submitButton = document.getElementById('captcha_submit');  if (captchaInput && submitButton) {    captchaInput.value = '", str, "';    submitButton.click();    return true;  } else {    return false;  }})();");
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: flix.com.vision.subtitles.c
                @Override // java.lang.Runnable
                public final void run() {
                    SubDownloadExtended.SubDownloadWebViewClient.lambda$submitCaptchaSolution$4(webView, l7);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (str == null || !str.contains(SubDownloadExtended.CAPTCHA_INDICATOR)) {
                extractDownloadLink(webView, str);
            } else {
                Log.i(SubDownloadExtended.TAG, "Captcha detected!");
                solveCaptcha(webView);
            }
        }
    }

    public static boolean checkSubFolder(Context context) {
        try {
            SUB_PATH = context.getExternalCacheDir().getAbsolutePath() + "/subs/";
            File file = new File(SUB_PATH);
            if (file.exists()) {
                return true;
            }
            file.mkdir();
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            Toast.makeText(context, e3.getMessage(), 0).show();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void downloadFileWithOkHttp(final String str) {
        if (mOkHttpClient == null) {
            mOkHttpClient = new OkHttpClient.Builder().cookieJar(getWebViewCookieJar()).build();
        }
        WebView webView = mWebView;
        mOkHttpClient.newCall(new Request.Builder().url(str).header("User-Agent", (webView == null || webView.getSettings() == null) ? USER_AGENT : mWebView.getSettings().getUserAgentString()).build()).enqueue(new Callback() { // from class: flix.com.vision.subtitles.SubDownloadExtended.2
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                Log.e(SubDownloadExtended.TAG, "Download failed: " + iOException.getMessage(), iOException);
                SubDownloadExtended.sendFailureEvent();
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                if (!response.isSuccessful() || response.body() == null) {
                    Log.e(SubDownloadExtended.TAG, "Download failed: " + response);
                    SubDownloadExtended.sendFailureEvent();
                    return;
                }
                InputStream byteStream = response.body().byteStream();
                String extractFilenameFromUrl = SubDownloadExtended.extractFilenameFromUrl(str);
                if (extractFilenameFromUrl == null || extractFilenameFromUrl.isEmpty()) {
                    extractFilenameFromUrl = "subtitle.zip";
                }
                String o6 = A.i.o(new StringBuilder(), SubDownloadExtended.SUB_PATH, extractFilenameFromUrl);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(o6));
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = byteStream.read(bArr);
                        if (read == -1) {
                            fileOutputStream.close();
                            byteStream.close();
                            Log.d(SubDownloadExtended.TAG, "File downloaded successfully to: " + o6);
                            SubDownloadExtended.unZipFileGZIP(o6, SubDownloadExtended.SUB_PATH + extractFilenameFromUrl.replace(".zip", ""));
                            return;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                } catch (IOException e3) {
                    Log.e(SubDownloadExtended.TAG, "IO exception: " + e3.getMessage(), e3);
                    SubDownloadExtended.sendFailureEvent();
                }
            }
        });
    }

    public static void downloadSubtitle(Context context, String str) {
        if (checkSubFolder(context)) {
            mContext = context;
            if (!isWebViewInitialized.booleanValue()) {
                initializeWebView(context);
                isWebViewInitialized = Boolean.TRUE;
            }
            loadDownloadPage(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String extractFilenameFromUrl(String str) {
        try {
            String path = new URL(str).getPath();
            return path.substring(path.lastIndexOf(47) + 1);
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error extracting filename from URL: "), TAG);
            return null;
        }
    }

    private static CookieJar getWebViewCookieJar() {
        return new CookieJar() { // from class: flix.com.vision.subtitles.SubDownloadExtended.1
            @Override // okhttp3.CookieJar
            public List<Cookie> loadForRequest(HttpUrl httpUrl) {
                String cookie = CookieManager.getInstance().getCookie(httpUrl.toString());
                if (cookie == null || cookie.isEmpty()) {
                    return Collections.EMPTY_LIST;
                }
                String[] split = cookie.split(";");
                ArrayList arrayList = new ArrayList(split.length);
                for (String str : split) {
                    Cookie parse = Cookie.parse(httpUrl, str.trim());
                    if (parse != null) {
                        arrayList.add(parse);
                    }
                }
                return arrayList;
            }

            @Override // okhttp3.CookieJar
            public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
                CookieManager cookieManager = CookieManager.getInstance();
                Iterator<Cookie> it = list.iterator();
                while (it.hasNext()) {
                    cookieManager.setCookie(httpUrl.toString(), it.next().toString());
                }
                cookieManager.flush();
            }
        };
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private static void initializeWebView(Context context) {
        new Handler(Looper.getMainLooper()).post(new b(context, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initializeWebView$0(Context context) {
        WebView webView = new WebView(context.getApplicationContext());
        mWebView = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUserAgentString(USER_AGENT);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(mWebView, true);
        CookieSyncManager.createInstance(context);
        mWebView.setWebViewClient(new SubDownloadWebViewClient());
        mOkHttpClient = new OkHttpClient.Builder().cookieJar(getWebViewCookieJar()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadDownloadPage$1(String str) {
        WebView webView = mWebView;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    private static void loadDownloadPage(String str) {
        new Handler(Looper.getMainLooper()).post(new b(str, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendFailureEvent() {
        CastAction castAction = new CastAction();
        castAction.file = null;
        EventBus.getDefault().post(castAction);
    }

    public static void unZipFileGZIP(String str, String str2) {
        byte[] bArr = new byte[1024];
        String str3 = null;
        try {
            try {
                ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
                String str4 = null;
                do {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    str4 = nextEntry.getName();
                    if (str4.contains(".srt")) {
                        break;
                    }
                } while (!str4.contains(".wtt"));
                if (str4 != null) {
                    File file = new File(str2);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    String str5 = str2 + RemoteSettings.FORWARD_SLASH_STRING + str4;
                    FileOutputStream fileOutputStream = new FileOutputStream(str5);
                    while (true) {
                        int read = zipInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, read);
                        }
                    }
                    zipInputStream.closeEntry();
                    fileOutputStream.close();
                    try {
                        Log.d(TAG, "The file was decompressed successfully: " + str5);
                        str3 = str5;
                    } catch (IOException e3) {
                        e = e3;
                        str3 = str5;
                        Log.e(TAG, "Unzip Error: " + e.getMessage(), e);
                        CastAction castAction = new CastAction();
                        castAction.file = str3;
                        EventBus.getDefault().post(castAction);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        str3 = str5;
                        CastAction castAction2 = new CastAction();
                        castAction2.file = str3;
                        EventBus.getDefault().post(castAction2);
                        throw th;
                    }
                }
                zipInputStream.close();
                File file2 = new File(str);
                if (file2.exists()) {
                    file2.delete();
                }
                CastAction castAction3 = new CastAction();
                castAction3.file = str3;
                EventBus.getDefault().post(castAction3);
            } catch (IOException e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
