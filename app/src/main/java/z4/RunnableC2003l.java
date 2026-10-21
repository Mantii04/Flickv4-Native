package z4;

import flix.com.vision.activities.adult.AdultVideosSearchActivity;

/* renamed from: z4.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC2003l implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21457b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AdultVideosSearchActivity f21458e;

    public /* synthetic */ RunnableC2003l(AdultVideosSearchActivity adultVideosSearchActivity, int i2) {
        this.f21457b = i2;
        this.f21458e = adultVideosSearchActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21457b) {
            case 0:
                this.f21458e.f15393v = false;
                break;
            case 1:
                this.f21458e.f15383f.openSearch();
                break;
            default:
                AdultVideosSearchActivity adultVideosSearchActivity = this.f21458e;
                if (adultVideosSearchActivity.f15391t != null) {
                    int i2 = adultVideosSearchActivity.f15390s + 1;
                    adultVideosSearchActivity.f15390s = i2;
                    adultVideosSearchActivity.getVideos(i2);
                    break;
                }
                break;
        }
    }
}
