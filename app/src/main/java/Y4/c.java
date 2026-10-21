package Y4;

import A.i;
import U4.f;
import U4.g;
import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.VideoSource;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4392a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4393b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final f f4394c;

    /* renamed from: d, reason: collision with root package name */
    public g f4395d;

    /* renamed from: e, reason: collision with root package name */
    public VideoSource f4396e;

    /* renamed from: f, reason: collision with root package name */
    public String f4397f;

    public c(Context context, f fVar) {
        this.f4394c = fVar;
    }

    public void addLink(String str, String str2, String str3) {
        if (this.f4395d != null) {
            addLinkHindiSplit(str, str2, str3);
            return;
        }
        VideoSource videoSource = new VideoSource();
        videoSource.label = i.B(str2, !this.f4392a ? " - [FVSTREAM] - [DIRECT] - English" : " - [GOGOSTREAM] - [DIRECT]");
        videoSource.streamable = true;
        try {
            videoSource.quality = Integer.parseInt(str2.replace("p", "").trim());
        } catch (Exception unused) {
        }
        videoSource.isSplitted = true;
        videoSource.streamUrl = str;
        videoSource.referer = str3;
        if (str2 == null || !str2.contains("1080")) {
            this.f4393b.add(videoSource);
        } else {
            this.f4396e = videoSource;
            videoSource.quality = 1080;
        }
    }

    public void addLinkHindiSplit(String str, String str2, String str3) {
        VideoSource videoSource = new VideoSource();
        videoSource.label = str2;
        videoSource.streamable = true;
        videoSource.isHindi = true;
        videoSource.referer = str3;
        try {
            videoSource.quality = Integer.parseInt(str2.replace("p", "").trim());
        } catch (Exception unused) {
        }
        videoSource.isHindiDirect = true;
        videoSource.isSplitted = true;
        videoSource.streamUrl = str;
        if (str2 == null || !str2.contains("1080")) {
            this.f4393b.add(videoSource);
        } else {
            this.f4396e = videoSource;
        }
    }

    public void process(VideoSource videoSource, String str) {
        new b(this, videoSource.streamUrl).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        this.f4397f = str;
    }

    public void setHindiM3uSpliCallBack(g gVar) {
        this.f4395d = gVar;
    }
}
