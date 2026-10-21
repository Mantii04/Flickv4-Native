package y4;

import android.content.DialogInterface;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.models.VideoSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class w1 implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21304b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UserTorrentsActivity f21305e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f21306f;

    public /* synthetic */ w1(UserTorrentsActivity userTorrentsActivity, ArrayList arrayList, int i2) {
        this.f21304b = i2;
        this.f21305e = userTorrentsActivity;
        this.f21306f = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        ArrayList arrayList = this.f21306f;
        UserTorrentsActivity userTorrentsActivity = this.f21305e;
        switch (this.f21304b) {
            case 0:
                int i7 = UserTorrentsActivity.f15279y;
                String str = (String) arrayList.get(i2);
                userTorrentsActivity.k();
                userTorrentsActivity.f15294x.clear();
                D4.a.getLinkRealDebrid(str, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u1(userTorrentsActivity, 9), new A4.u(7, userTorrentsActivity, str));
                dialogInterface.dismiss();
                break;
            case 1:
                int i8 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.getClass();
                userTorrentsActivity.i((VideoSource) arrayList.get(i2));
                dialogInterface.dismiss();
                break;
            default:
                int i9 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.getClass();
                dialogInterface.dismiss();
                VideoSource videoSource = (VideoSource) arrayList.get(i2);
                LinksActivity.setRDQtyLabel(videoSource);
                if (videoSource.quality == 0) {
                    videoSource.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                }
                userTorrentsActivity.i(videoSource);
                break;
        }
    }
}
