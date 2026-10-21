package y4;

import android.content.DialogInterface;
import android.content.Intent;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.TraktTvConfigActivity;
import io.reactivex.android.schedulers.AndroidSchedulers;

/* loaded from: classes2.dex */
public final /* synthetic */ class Y implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21193b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21194e;

    public /* synthetic */ Y(MainActivity mainActivity, int i2) {
        this.f21193b = i2;
        this.f21194e = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i7 = 0;
        MainActivity mainActivity = this.f21194e;
        switch (this.f21193b) {
            case 0:
                int i8 = MainActivity.f14747T;
                dialogInterface.dismiss();
                Toast.makeText(mainActivity, "Syncing history with Trakt...", 0).show();
                App.getInstance().f14438q.syncUserHistoryWithTrakt().observeOn(AndroidSchedulers.mainThread()).subscribe(new B4.N(mainActivity, 2), new C1900e0(mainActivity, i7));
                break;
            case 1:
                int i9 = MainActivity.f14747T;
                mainActivity.getClass();
                dialogInterface.dismiss();
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) TraktTvConfigActivity.class));
                break;
            default:
                int i10 = MainActivity.f14747T;
                mainActivity.getClass();
                dialogInterface.dismiss();
                Intent launchIntentForPackage = mainActivity.getBaseContext().getPackageManager().getLaunchIntentForPackage(mainActivity.getBaseContext().getPackageName());
                launchIntentForPackage.addFlags(androidx.media3.common.C.BUFFER_FLAG_NOT_DEPENDED_ON);
                mainActivity.startActivity(launchIntentForPackage);
                break;
        }
    }
}
