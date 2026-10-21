package flix.com.vision.bvp.subtitle;

import A.i;
import K4.y;
import L4.a;
import L4.b;
import L4.c;
import L4.f;
import android.content.Context;
import android.net.Uri;
import android.text.Html;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media3.exoplayer.ExoPlayer;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
public class CaptionsView extends AppCompatTextView implements Runnable {

    /* renamed from: w, reason: collision with root package name */
    public static String f15978w;

    /* renamed from: q, reason: collision with root package name */
    public long f15979q;

    /* renamed from: r, reason: collision with root package name */
    public ExoPlayer f15980r;

    /* renamed from: s, reason: collision with root package name */
    public TreeMap f15981s;

    /* renamed from: t, reason: collision with root package name */
    public CMime f15982t;

    /* renamed from: u, reason: collision with root package name */
    public Uri f15983u;

    /* renamed from: v, reason: collision with root package name */
    public String f15984v;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CMime {

        /* renamed from: b, reason: collision with root package name */
        public static final CMime f15985b;

        /* renamed from: e, reason: collision with root package name */
        public static final CMime f15986e;

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ CMime[] f15987f;

        static {
            CMime cMime = new CMime("SUBRIP", 0);
            f15985b = cMime;
            CMime cMime2 = new CMime("WEBVTT", 1);
            f15986e = cMime2;
            f15987f = new CMime[]{cMime, cMime2};
        }

        public static CMime valueOf(String str) {
            return (CMime) Enum.valueOf(CMime.class, str);
        }

        public static CMime[] values() {
            return (CMime[]) f15987f.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TrackParseState {

        /* renamed from: b, reason: collision with root package name */
        public static final TrackParseState f15988b;

        /* renamed from: e, reason: collision with root package name */
        public static final TrackParseState f15989e;

        /* renamed from: f, reason: collision with root package name */
        public static final TrackParseState f15990f;

        /* renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ TrackParseState[] f15991j;

        static {
            TrackParseState trackParseState = new TrackParseState("NEW_TRACK", 0);
            f15988b = trackParseState;
            TrackParseState trackParseState2 = new TrackParseState("PARSED_CUE", 1);
            f15989e = trackParseState2;
            TrackParseState trackParseState3 = new TrackParseState("PARSED_TIME", 2);
            f15990f = trackParseState3;
            f15991j = new TrackParseState[]{trackParseState, trackParseState2, trackParseState3};
        }

        public static TrackParseState valueOf(String str) {
            return (TrackParseState) Enum.valueOf(TrackParseState.class, str);
        }

        public static TrackParseState[] values() {
            return (TrackParseState[]) f15991j.clone();
        }
    }

    public CaptionsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15979q = 0L;
        this.f15983u = null;
        this.f15984v = null;
    }

    public static long p(String str) {
        String[] split = str.split(":");
        String[] split2 = split[2].split(",");
        long parseLong = Long.parseLong(split[0].trim());
        long parseLong2 = Long.parseLong(split[1].trim());
        long parseLong3 = Long.parseLong(split2[0].trim());
        return (parseLong3 * 1000) + (parseLong2 * 60000) + (parseLong * DateUtils.MILLIS_PER_HOUR) + Long.parseLong(split2[1].trim());
    }

    public static TreeMap<Long, c> parse(InputStream inputStream, CMime cMime) throws IOException {
        return cMime == CMime.f15985b ? parseSrt(inputStream) : cMime == CMime.f15986e ? parseVtt(inputStream) : parseSrt(inputStream);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0094, code lost:
    
        r4 = r2.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x009e, code lost:
    
        if (r4.contains("OpenSubtitles") != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00a6, code lost:
    
        if (r4.contains("elsubtitle.com") != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ae, code lost:
    
        if (r4.contains("addic7ed.") != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b6, code lost:
    
        if (r4.contains("FlixTor.") != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00be, code lost:
    
        if (r4.contains("db.link") == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c1, code lost:
    
        r6.setText(r4.substring(0, r4.length() - 5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00cf, code lost:
    
        r6.setText("Like the App? Join us on X and Discord <br/>at @FlixVisionApp to stay in the loop!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.TreeMap<java.lang.Long, L4.c> parseSrt(java.io.InputStream r16) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.bvp.subtitle.CaptionsView.parseSrt(java.io.InputStream):java.util.TreeMap");
    }

    public static TreeMap<Long, c> parseVtt(InputStream inputStream) throws IOException {
        LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        TreeMap<Long, c> treeMap = new TreeMap<>();
        lineNumberReader.readLine();
        lineNumberReader.readLine();
        while (true) {
            String readLine = lineNumberReader.readLine();
            if (readLine == null) {
                return treeMap;
            }
            String str = "";
            while (true) {
                String readLine2 = lineNumberReader.readLine();
                if (readLine2 == null || readLine2.trim().equals("")) {
                    break;
                }
                str = i.C(str, readLine2, "<br/>");
            }
            String d7 = i.d(5, 0, str);
            String[] split = readLine.split(" --> ");
            if (split.length == 2) {
                long q6 = q(split[0]);
                treeMap.put(Long.valueOf(q6), new c(q6, q(split[1]), d7));
            }
        }
    }

    public static long q(String str) {
        String[] split = str.split(":");
        if (split.length != 3) {
            String[] split2 = split[1].split("\\.");
            long parseLong = Long.parseLong(split[0].trim());
            return (Long.parseLong(split2[0].trim()) * 1000) + (parseLong * 60000) + Long.parseLong(split2[1].trim());
        }
        String[] split3 = split[2].split("\\.");
        long parseLong2 = Long.parseLong(split[0].trim());
        long parseLong3 = Long.parseLong(split[1].trim());
        long parseLong4 = Long.parseLong(split3[0].trim());
        return (parseLong4 * 1000) + (parseLong3 * 60000) + (parseLong2 * DateUtils.MILLIS_PER_HOUR) + Long.parseLong(split3[1].trim());
    }

    public void changeEncoding(String str) {
        Uri uri = this.f15983u;
        if (uri == null && this.f15984v == null) {
            return;
        }
        f15978w = str;
        if (uri == null) {
            String str2 = this.f15984v;
            if (str2 != null) {
                this.f15981s = n(str2);
                return;
            }
            return;
        }
        if (!y.isRemotePath(uri)) {
            this.f15981s = n(this.f15983u.toString());
            return;
        }
        try {
            URL url = new URL(this.f15983u.toString());
            new f(getContext(), new a(this, url)).execute(url.toString(), "subtitle.srt");
        } catch (NullPointerException | MalformedURLException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.TreeMap n(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            flix.com.vision.bvp.subtitle.CaptionsView$CMime r4 = r3.f15982t     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1d
            java.util.TreeMap r4 = parse(r1, r4)     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1d
            r1.close()     // Catch: java.io.IOException -> L15
            return r4
        L15:
            r0 = move-exception
            r0.printStackTrace()
            return r4
        L1a:
            r4 = move-exception
            r0 = r1
            goto L31
        L1d:
            r4 = move-exception
            goto L23
        L1f:
            r4 = move-exception
            goto L31
        L21:
            r4 = move-exception
            r1 = r0
        L23:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L30
            r1.close()     // Catch: java.io.IOException -> L2c
            goto L30
        L2c:
            r4 = move-exception
            r4.printStackTrace()
        L30:
            return r0
        L31:
            if (r0 == 0) goto L3b
            r0.close()     // Catch: java.io.IOException -> L37
            goto L3b
        L37:
            r0 = move-exception
            r0.printStackTrace()
        L3b:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.bvp.subtitle.CaptionsView.n(java.lang.String):java.util.TreeMap");
    }

    public final String o(long j7) {
        long j8 = j7 + this.f15979q;
        String str = "";
        for (Map.Entry entry : this.f15981s.entrySet()) {
            if (j8 < ((Long) entry.getKey()).longValue()) {
                break;
            }
            if (j8 < ((c) entry.getValue()).f1912b) {
                str = ((c) entry.getValue()).f1913c;
            }
        }
        return str;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        postDelayed(this, 300L);
        setShadowLayer(6.0f, 6.0f, 6.0f, -16777216);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2;
        ExoPlayer exoPlayer = this.f15980r;
        if (exoPlayer != null && this.f15981s != null) {
            try {
                String o6 = o(exoPlayer.getCurrentPosition());
                if (o6 == null || o6.isEmpty()) {
                    setText("");
                } else {
                    if (o6.toLowerCase().contains("{\\an8}")) {
                        o6 = o6.replaceAll("(?i)\\{\\\\an8\\}", "");
                        i2 = 49;
                    } else {
                        i2 = 81;
                    }
                    if (getGravity() != i2) {
                        setGravity(i2);
                    }
                    if (o6.contains("{\\")) {
                        o6 = o6.replaceAll("\\{\\\\.*?\\}", "");
                    }
                    setText(Html.fromHtml(o6));
                }
            } catch (Exception e3) {
                Log.w("SubtitleView", "Error updating captions", e3);
            }
        }
        postDelayed(this, 50L);
    }

    public void setCaptionsSource(Uri uri, CMime cMime, String str) {
        this.f15983u = null;
        this.f15984v = null;
        this.f15982t = cMime;
        if (uri == null) {
            this.f15981s = new TreeMap();
            return;
        }
        this.f15983u = uri;
        if (y.isRemotePath(uri)) {
            try {
                URL url = new URL(uri.toString());
                new f(getContext(), new a(this, url)).execute(url.toString(), "subtitle.srt");
            } catch (NullPointerException | MalformedURLException e3) {
                e3.printStackTrace();
            }
        } else {
            this.f15981s = n(uri.toString());
        }
        removeCallbacks(this);
        post(this);
    }

    public void setEncoding(String str) {
    }

    public void setPlayer(ExoPlayer exoPlayer) {
        this.f15980r = exoPlayer;
        removeCallbacks(this);
        post(this);
    }

    public void setCaptionsSource(String str, CMime cMime, String str2) {
        this.f15983u = null;
        this.f15984v = null;
        this.f15982t = cMime;
        if (str == null) {
            this.f15981s = new TreeMap();
        } else {
            this.f15984v = str;
            this.f15981s = n(str);
        }
    }

    public void setCaptionsViewLoadListener(b bVar) {
    }
}
