package A4;

import android.app.FragmentManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.ModernFilePickerActivity;
import flix.com.vision.activities.TraktActivity;
import flix.com.vision.activities.TraktSignInActivity;
import flix.com.vision.activities.WatchedAcvivity;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.tv.M3UImportActivity;
import flix.com.vision.tv.MyImportActivity;
import h5.AbstractC0995i;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public final /* synthetic */ class j implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivityLeanback f69e;

    public /* synthetic */ j(MainActivityLeanback mainActivityLeanback, int i2) {
        this.f68b = i2;
        this.f69e = mainActivityLeanback;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = 1;
        MainActivityLeanback mainActivityLeanback = this.f69e;
        switch (this.f68b) {
            case 0:
                int i7 = MainActivityLeanback.f15476I;
                FragmentManager fragmentManager = mainActivityLeanback.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(mainActivityLeanback, false);
                newInstance.setloading();
                try {
                    newInstance.show(fragmentManager, "");
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                App.getInstance().loadRemoteConfig();
                new Handler().postDelayed(new n(0, mainActivityLeanback, newInstance), 5000L);
                break;
            case 1:
                int i8 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                try {
                    if (A.h.checkSelfPermission(mainActivityLeanback, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                        AbstractC1958d.requestPermissions(mainActivityLeanback, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                Intent intent = new Intent(mainActivityLeanback, (Class<?>) ModernFilePickerActivity.class);
                intent.putExtra("picker_mode", "m3u");
                mainActivityLeanback.startActivityForResult(intent, 12345);
                break;
            case 2:
                int i9 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) M3UImportActivity.class));
                break;
            case 3:
                int i10 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                if (App.getInstance().f14439r.getWatchedMoviesFromDb().size() != 0) {
                    mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) WatchedAcvivity.class));
                    mainActivityLeanback.f(true);
                    break;
                } else {
                    AbstractC0995i.makeToast(mainActivityLeanback, "No Item Marked As Watched Yet", false);
                    break;
                }
            case 4:
                int i11 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) TraktSignInActivity.class));
                break;
            case 5:
                int i12 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                mainActivityLeanback.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:flix.com.vision")), 2000);
                break;
            case 6:
                int i13 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) DramaHomeActivity.class));
                break;
            case 7:
                int i14 = MainActivityLeanback.f15476I;
                if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                    mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) TraktActivity.class));
                    break;
                } else {
                    FragmentManager fragmentManager2 = mainActivityLeanback.getFragmentManager();
                    Q4.d newInstance2 = Q4.d.newInstance(mainActivityLeanback, false);
                    newInstance2.setTitle(mainActivityLeanback.getString(R.string.trakt_tv_label));
                    newInstance2.setCancelable(false);
                    newInstance2.setMessage(mainActivityLeanback.getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                    newInstance2.setButton1("CANCEL", new q(0));
                    newInstance2.setButton2(mainActivityLeanback.getString(R.string.action_sign_in), new j(mainActivityLeanback, 4));
                    try {
                        newInstance2.show(fragmentManager2, "");
                        break;
                    } catch (Exception e8) {
                        e8.printStackTrace();
                        return;
                    }
                }
            case 8:
                int i15 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                AbstractC0995i.makeToast(mainActivityLeanback, "COMING SOON...", true);
                mainActivityLeanback.f(true);
                break;
            case 9:
                int i16 = MainActivityLeanback.f15476I;
                FragmentManager fragmentManager3 = mainActivityLeanback.getFragmentManager();
                Q4.d newInstance3 = Q4.d.newInstance(mainActivityLeanback, true);
                newInstance3.setTitle("M3U Import");
                newInstance3.setMessage("How do you want to import your M3U Playlist?");
                newInstance3.setButton2("From File", new j(mainActivityLeanback, i2));
                newInstance3.setButton1("From URL", new j(mainActivityLeanback, 2));
                try {
                    newInstance3.show(fragmentManager3, "");
                    break;
                } catch (Exception e9) {
                    e9.printStackTrace();
                    return;
                }
            case 10:
                int i17 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) MyImportActivity.class));
                break;
            default:
                int i18 = MainActivityLeanback.f15476I;
                mainActivityLeanback.finish();
                break;
        }
    }
}
