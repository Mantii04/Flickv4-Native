package L4;

import flix.com.vision.bvp.subtitle.CaptionsView;
import java.io.File;
import java.net.URL;

/* loaded from: classes2.dex */
public final class a implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CaptionsView f1910a;

    public a(CaptionsView captionsView, URL url) {
        this.f1910a = captionsView;
    }

    public void onDownload(File file) {
        CaptionsView captionsView = this.f1910a;
        try {
            String path = file.getPath();
            String str = CaptionsView.f15978w;
            captionsView.f15981s = captionsView.n(path);
        } catch (Exception unused) {
            String str2 = CaptionsView.f15978w;
            captionsView.getClass();
        }
    }

    public void onFail(Exception exc) {
        String str = CaptionsView.f15978w;
        this.f1910a.getClass();
    }
}
