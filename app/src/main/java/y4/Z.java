package y4;

import android.content.DialogInterface;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.TraktTvConfigActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class Z implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21197b;

    public /* synthetic */ Z(int i2) {
        this.f21197b = i2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        switch (this.f21197b) {
            case 0:
                int i7 = MainActivity.f14747T;
                dialogInterface.dismiss();
                break;
            case 1:
                int i8 = MainActivity.f14747T;
                dialogInterface.dismiss();
                break;
            case 2:
                dialogInterface.dismiss();
                break;
            case 3:
                int i9 = SettingsActivity.f15080c2;
                dialogInterface.dismiss();
                break;
            default:
                int i10 = TraktTvConfigActivity.f15262z;
                dialogInterface.dismiss();
                break;
        }
    }
}
