package flix.com.vision.subtitles;

import android.view.View;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16149b;

    public /* synthetic */ i(int i2) {
        this.f16149b = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f16149b) {
            case 0:
                SubtitlesWebViewActivity.lambda$showDialogHelp$5(view);
                break;
            case 1:
                SubtitlesWebViewActivity.lambda$showDialog$1(view);
                break;
            default:
                SubtitlesWebViewActivity.lambda$showDialogSubtitle$3(view);
                break;
        }
    }
}
