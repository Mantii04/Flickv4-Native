package z4;

import android.widget.Toast;
import flix.com.vision.activities.adult.AdultVideosActivity;

/* renamed from: z4.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1999h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21450b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AdultVideosActivity f21451e;

    public /* synthetic */ RunnableC1999h(AdultVideosActivity adultVideosActivity, int i2) {
        this.f21450b = i2;
        this.f21451e = adultVideosActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21450b) {
            case 0:
                this.f21451e.f15360t.requestFocus();
                break;
            case 1:
                AdultVideosActivity adultVideosActivity = this.f21451e;
                if (adultVideosActivity.f15359s.size() == 0) {
                    Toast.makeText(adultVideosActivity.getBaseContext(), "We're not able to load any data. AdultZone may be blocked in your region. Please try with a VPN", 1).show();
                    break;
                }
                break;
            case 2:
                this.f21451e.f15366z = false;
                break;
            default:
                AdultVideosActivity adultVideosActivity2 = this.f21451e;
                int i2 = adultVideosActivity2.f15364x + 1;
                adultVideosActivity2.f15364x = i2;
                adultVideosActivity2.getVideos(i2);
                break;
        }
    }
}
