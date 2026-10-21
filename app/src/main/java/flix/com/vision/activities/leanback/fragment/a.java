package flix.com.vision.activities.leanback.fragment;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import androidx.fragment.app.strictmode.Violation;
import androidx.leanback.widget.C0502f0;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import flix.com.vision.App;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.extractors.CloseloadExtractor;
import flix.com.vision.extractors.CloseloadExtractorExtended;
import flix.com.vision.extractors.VixSrcExtractor;
import flix.com.vision.models.Movie;
import flix.com.vision.models.Video;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.processors.english.B;
import flix.com.vision.processors.english.r;
import flix.com.vision.processors.english.s;
import flix.com.vision.processors.english.u;
import flix.com.vision.processors.english.v;
import flix.com.vision.processors.english.y;
import java.util.Arrays;
import m4.D;
import n1.Q;
import n1.z;
import org.greenrobot.eventbus.util.AsyncExecutor;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15558b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f15559e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f15560f;

    public /* synthetic */ a(int i2, Object obj, Object obj2) {
        this.f15558b = i2;
        this.f15559e = obj;
        this.f15560f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f15560f;
        Object obj2 = this.f15559e;
        switch (this.f15558b) {
            case 0:
                d dVar = (d) obj2;
                Movie movie = (Movie) obj;
                dVar.f15573o0.setText(movie.getTitle());
                dVar.f15571m0.setText(movie.getOverview());
                if (movie.isSeries()) {
                    dVar.f15572n0.setText(" · Series");
                } else {
                    dVar.f15572n0.setText(" · Film");
                }
                String year = movie.getYear();
                String genres = movie.getGenres();
                if (genres != null && genres.length() > 2) {
                    year = A.i.C(year, " · ", genres);
                }
                dVar.f15570l0.setText(year);
                try {
                    String str = App.f14422G ? "w1280/" : "w780/";
                    D.get().load("https://www.themoviedb.org/t/p/" + str + movie.backdrop).fit().centerCrop().into(dVar.f15574p0);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                dVar.i();
                return;
            case 1:
                d dVar2 = (d) obj2;
                Network network = (Network) obj;
                dVar2.f15573o0.setText(network.movie.getTitle());
                dVar2.f15571m0.setText(network.movie.getOverview());
                if (network.movie.isSeries()) {
                    dVar2.f15572n0.setText(" · Series");
                } else {
                    dVar2.f15572n0.setText(" · Film");
                }
                if (network.id == 99999) {
                    dVar2.f15572n0.setText(" · Film & Series");
                }
                String year2 = network.movie.getYear();
                String genres2 = network.movie.getGenres();
                if (genres2 != null && genres2.length() > 2) {
                    year2 = A.i.C(year2, " · ", genres2);
                }
                dVar2.f15570l0.setText(year2);
                try {
                    D.get().load(network.movie.backdrop_image_res_id).fit().centerCrop().into(dVar2.f15574p0);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                dVar2.i();
                return;
            case 2:
                TVListFragmentMain tVListFragmentMain = (TVListFragmentMain) obj2;
                C0502f0 c0502f0 = (C0502f0) obj;
                if (tVListFragmentMain.f15538X0.size() > 0) {
                    tVListFragmentMain.f15538X0.add(1, c0502f0);
                    return;
                } else {
                    tVListFragmentMain.f15538X0.add(0, c0502f0);
                    return;
                }
            case 3:
                ((VixSrcExtractor) obj2).lambda$extract$0((String) obj);
                return;
            case 4:
                s sVar = (s) obj2;
                WebView webView = new WebView(sVar.f16117c);
                sVar.f16115a = webView;
                webView.getSettings().setJavaScriptEnabled(true);
                sVar.f16115a.getSettings().setDomStorageEnabled(true);
                sVar.f16115a.setWebViewClient(new r(sVar));
                sVar.f16115a.loadUrl((String) obj);
                return;
            case 5:
                s sVar2 = (s) obj2;
                int i2 = 0;
                while (true) {
                    JsonArray jsonArray = (JsonArray) obj;
                    if (i2 >= jsonArray.size()) {
                        try {
                            new Handler(Looper.getMainLooper()).post(new flix.com.vision.processors.english.d(sVar2, 2));
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    try {
                        JsonObject asJsonObject = jsonArray.get(i2).getAsJsonObject();
                        String asString = asJsonObject.get("template").getAsString();
                        String asString2 = asJsonObject.get("video_id").getAsString();
                        org.jsoup.nodes.b selectFirst = g6.e.parse(asString).selectFirst("iframe");
                        if (selectFirst != null) {
                            Video extract = new CloseloadExtractor().extract(selectFirst.attr("data-src").replace("{url}", asString2));
                            VideoSource videoSource = new VideoSource();
                            videoSource.streamUrl = extract.getSource();
                            videoSource.label = "1080p · [FVSTREAM 3] · [DIRECT] · English";
                            videoSource.streamable = true;
                            videoSource.quality = 1080;
                            videoSource.referer = "https://closeload.top/";
                            if (extract.getHeaders() != null) {
                                videoSource.headers = extract.getHeaders();
                            }
                            new Handler(Looper.getMainLooper()).post(new a(6, sVar2, videoSource));
                        }
                    } catch (Exception unused2) {
                    }
                    i2++;
                }
            case 6:
                ((s) obj2).callBack.OnSuccess((VideoSource) obj);
                return;
            case 7:
                v vVar = (v) obj2;
                try {
                    WebView webView2 = new WebView(vVar.f16123b);
                    vVar.f16122a = webView2;
                    webView2.getSettings().setJavaScriptEnabled(true);
                    vVar.f16122a.getSettings().setDomStorageEnabled(true);
                    vVar.f16122a.setWebViewClient(new u(vVar));
                    vVar.f16122a.loadUrl((String) obj);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            case 8:
                v vVar2 = (v) obj2;
                int i7 = 0;
                while (true) {
                    JsonArray jsonArray2 = (JsonArray) obj;
                    if (i7 >= jsonArray2.size()) {
                        new Handler(Looper.getMainLooper()).post(new flix.com.vision.processors.english.d(vVar2, 4));
                        return;
                    }
                    try {
                        JsonObject asJsonObject2 = jsonArray2.get(i7).getAsJsonObject();
                        String asString3 = asJsonObject2.get("template").getAsString();
                        String asString4 = asJsonObject2.get("video_id").getAsString();
                        org.jsoup.nodes.b selectFirst2 = g6.e.parse(asString3).selectFirst("iframe");
                        if (selectFirst2 != null) {
                            String replace = selectFirst2.attr("data-src").replace("{url}", asString4);
                            Video extract2 = replace.contains("ridorapid") ? new CloseloadExtractorExtended().extract(replace) : new CloseloadExtractor().extract(replace);
                            VideoSource videoSource2 = new VideoSource();
                            videoSource2.streamUrl = extract2.getSource();
                            videoSource2.label = "1080p · [FVSTREAM 3] · [DIRECT] · English";
                            videoSource2.streamable = true;
                            videoSource2.referer = "https://closeload.top/";
                            if (extract2.getHeaders() != null) {
                                videoSource2.headers = extract2.getHeaders();
                            }
                            videoSource2.quality = 1080;
                            new Handler(Looper.getMainLooper()).post(new a(9, vVar2, videoSource2));
                        }
                    } catch (Exception unused4) {
                    }
                    i7++;
                }
            case 9:
                ((v) obj2).callBack.OnSuccess((VideoSource) obj);
                return;
            case 10:
                U4.f fVar = ((y) obj2).callBack;
                if (fVar != null) {
                    fVar.OnSuccess((VideoSource) obj);
                    return;
                }
                return;
            case 11:
                U4.f fVar2 = ((B) obj2).callBack;
                if (fVar2 != null) {
                    fVar2.OnSuccess((VideoSource) obj);
                    return;
                }
                return;
            case 12:
                Violation violation = (Violation) obj;
                kotlin.jvm.internal.j.checkNotNullParameter(violation, "$violation");
                Log.e("FragmentStrictMode", "Policy violation with PENALTY_DEATH in " + ((String) obj2), violation);
                throw violation;
            case 13:
                z this$0 = (z) obj2;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                String[] tables = (String[]) obj;
                kotlin.jvm.internal.j.checkNotNullParameter(tables, "$tables");
                this$0.getInvalidationTracker().notifyObserversByTableNames((String[]) Arrays.copyOf(tables, tables.length));
                return;
            case 14:
                Runnable command = (Runnable) obj2;
                kotlin.jvm.internal.j.checkNotNullParameter(command, "$command");
                Q this$02 = (Q) obj;
                kotlin.jvm.internal.j.checkNotNullParameter(this$02, "this$0");
                try {
                    command.run();
                    return;
                } finally {
                    this$02.scheduleNext();
                }
            case 15:
                ((AsyncExecutor) obj2).lambda$execute$0((AsyncExecutor.RunnableEx) obj);
                return;
            default:
                int i8 = MainActivity.f14747T;
                ((MainActivity) obj2).askToUpdateIfAny(true, null);
                Q4.d dVar3 = (Q4.d) obj;
                if (dVar3 != null) {
                    dVar3.dismiss();
                    return;
                }
                return;
        }
    }
}
