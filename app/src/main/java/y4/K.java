package y4;

import B4.RunnableC0044g;
import android.content.DialogInterface;
import android.os.Handler;
import android.widget.Toast;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.FavoritesAcvivity;
import flix.com.vision.activities.TraktTvConfigActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class K implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21139b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0842v f21140e;

    public /* synthetic */ K(AbstractActivityC0842v abstractActivityC0842v, int i2) {
        this.f21139b = i2;
        this.f21140e = abstractActivityC0842v;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractActivityC0842v abstractActivityC0842v = this.f21140e;
        switch (this.f21139b) {
            case 0:
                int i7 = FavoritesAcvivity.f14655u;
                FavoritesAcvivity favoritesAcvivity = (FavoritesAcvivity) abstractActivityC0842v;
                favoritesAcvivity.getClass();
                dialogInterface.dismiss();
                try {
                    favoritesAcvivity.f14661n.setText(favoritesAcvivity.f14659j[i2]);
                    favoritesAcvivity.f14657e = i2;
                    favoritesAcvivity.e();
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 1:
                int i8 = FavoritesAcvivity.f14655u;
                FavoritesAcvivity favoritesAcvivity2 = (FavoritesAcvivity) abstractActivityC0842v;
                favoritesAcvivity2.getClass();
                dialogInterface.dismiss();
                try {
                    favoritesAcvivity2.f14660m.setText(favoritesAcvivity2.f14658f[i2]);
                    favoritesAcvivity2.f14656b = i2;
                    favoritesAcvivity2.e();
                    break;
                } catch (Exception unused2) {
                    return;
                }
            default:
                int i9 = TraktTvConfigActivity.f15262z;
                TraktTvConfigActivity traktTvConfigActivity = (TraktTvConfigActivity) abstractActivityC0842v;
                traktTvConfigActivity.getClass();
                App.getInstance().f14440s.edit().putBoolean("trakt_user_logged_in", false).apply();
                dialogInterface.dismiss();
                new Handler().postDelayed(new RunnableC0044g(2), 500L);
                Toast.makeText(traktTvConfigActivity.getBaseContext(), R.string.you_successfully_signed_out_mess, 1).show();
                traktTvConfigActivity.finish();
                break;
        }
    }
}
